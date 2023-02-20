local icons = {
  Namespace = '',
  Text = ' ',
  Method = ' ',
  Function = ' ',
  Constructor = ' ',
  Field = 'ﰠ ',
  Variable = ' ',
  Class = 'ﴯ ',
  Interface = ' ',
  Module = ' ',
  Property = 'ﰠ ',
  Unit = '塞 ',
  Value = ' ',
  Enum = ' ',
  Keyword = ' ',
  Snippet = ' ',
  Color = ' ',
  File = ' ',
  Reference = ' ',
  Folder = ' ',
  EnumMember = ' ',
  Constant = ' ',
  Struct = 'פּ ',
  Event = ' ',
  Operator = ' ',
  TypeParameter = ' ',
  Table = '',
  Object = ' ',
  Tag = '',
  Array = '[]',
  Boolean = ' ',
  Number = ' ',
  Null = 'ﳠ',
  String = ' ',
  Calendar = '',
  Watch = ' ',
  Package = '',
}

local function border(hl_name)
  return {
    { '╭', hl_name },
    { '─', hl_name },
    { '╮', hl_name },
    { '│', hl_name },
    { '╯', hl_name },
    { '─', hl_name },
    { '╰', hl_name },
    { '│', hl_name },
  }
end

return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'
    local cmp_window = require 'cmp.utils.window'

    cmp_window.info_ = cmp_window.info
    cmp_window.info = function(self)
      local info = self:info_()
      info.scrollable = false
      return info
    end

    cmp.setup {
      window = {
        completion = {
          border = border 'CmpBorder',
          winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None',
        },
        documentation = {
          border = border 'CmpBorder',
        },
      },
      snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
      },
      formatting = {
        format = function(_, vim_item)
          vim_item.kind = string.format('%s %s', icons[vim_item.kind], vim_item.kind)
          return vim_item
        end,
      },
      mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
          else
            fallback()
          end
        end, { 'i', 's' }),
      },
      sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
      },
    }

    luasnip.config.set_config {
      history = true,
      updateevents = 'TextChanged,TextChangedI',
    }

    require('luasnip.loaders.from_vscode').lazy_load()
    require('luasnip.loaders.from_vscode').lazy_load { paths = { './snippets' } }
    require('luasnip.loaders.from_snipmate').lazy_load()

    luasnip.filetype_extend('all', { '_' })

    vim.api.nvim_create_autocmd('InsertLeave', {
      callback = function()
        if luasnip.session.current_nodes[vim.api.nvim_get_current_buf()] and not luasnip.session.jump_active then luasnip.unlink_current() end
      end,
    })
  end,
}
