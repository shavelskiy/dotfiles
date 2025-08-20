local icons = {
  Namespace = '󰌗',
  Text = '󰉿',
  Method = '󰆧',
  Function = '󰆧',
  Constructor = '',
  Field = '󰜢',
  Variable = '󰀫',
  Class = '󰠱',
  Interface = '',
  Module = '',
  Property = '󰜢',
  Unit = '󰑭',
  Value = '󰎠',
  Enum = '',
  Keyword = '󰌋',
  Snippet = '',
  Color = '󱓻',
  File = '󰈚',
  Reference = '󰈇',
  Folder = '󰉋',
  EnumMember = '',
  Constant = '󰏿',
  Struct = '󰙅',
  Event = '',
  Operator = '󰆕',
  TypeParameter = '󰊄',
  Table = '',
  Object = '󰅩',
  Tag = '',
  Array = '[]',
  Boolean = '',
  Number = '',
  Null = '󰟢',
  Supermaven = '',
  String = '󰉿',
  Calendar = '',
  Watch = '󰥔',
  Package = '',
  Copilot = '',
  Codeium = '',
  TabNine = '',
  BladeNav = '',
}

local hlCache = {}

local function format_colors(entry, item)
  local color = entry.completion_item.documentation

  if color and type(color) == 'string' and color:match '^#%x%x%x%x%x%x$' then
    local hl = 'hex-' .. color:sub(2)

    if not hlCache[hl] then
      vim.api.nvim_set_hl(0, hl, { fg = color })
      hlCache[hl] = true
    end

    item.kind = ' ' .. icons.Color
    item.kind_hl_group = hl
    item.menu_hl_group = hl
  end
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

    cmp.setup {
      window = {
        completion = {
          scrollbar = false,
          side_padding = 1,
          winhighlight = 'Normal:CmpPmenu,CursorLine:PMenuSel,Search:None,FloatBorder:CmpBorder',
          border = 'single',
        },
        documentation = {
          border = 'single',
          winhighlight = 'Normal:CmpDoc,FloatBorder:CmpDocBorder',
        },
      },
      preselect = cmp.PreselectMode.None,
      snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
      },
      formatting = {
        format = function(entry, item)
          local kind = item.kind or ''

          item.menu = kind
          item.menu_hl_group = 'CmpItemKind' .. kind
          item.kind = (icons[item.kind] or '')

          if kind == 'Color' then format_colors(entry, item) end

          if #item.abbr > 60 then item.abbr = string.sub(item.abbr, 1, 60) .. '…' end

          return item
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
