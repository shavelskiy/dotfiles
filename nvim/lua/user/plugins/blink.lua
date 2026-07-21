local icons = {
  Namespace = '󰌗',
  Text = '󰉿',
  Method = '󰆧',
  Function = '󰆧',
  Constructor = '',
  Field = '󰜢',
  Variable = '󰀫',
  Class = '󰠱',
  Interface = '',
  Module = '',
  Property = '󰜢',
  Unit = '󰑭',
  Value = '󰎠',
  Enum = '',
  Keyword = '󰌋',
  Snippet = '',
  Color = '󱓻',
  File = '󰈚',
  Reference = '󰈇',
  Folder = '󰉋',
  EnumMember = '',
  Constant = '󰏿',
  Struct = '󰙅',
  Event = '',
  Operator = '󰆕',
  TypeParameter = '󰊄',
  Table = '',
  Object = '󰅩',
  Tag = '',
  Array = '[]',
  Boolean = '',
  Number = '',
  Null = '󰟢',
  String = '󰉿',
  Package = '',
}

local hlCache = {}

-- Colour swatch preview for LSP colour completions (e.g. tailwind / css).
local function color_highlight(ctx)
  local color = ctx.item.documentation

  if ctx.kind == 'Color' and type(color) == 'string' and color:match '^#%x%x%x%x%x%x$' then
    local hl = 'hex-' .. color:sub(2)

    if not hlCache[hl] then
      vim.api.nvim_set_hl(0, hl, { fg = color })
      hlCache[hl] = true
    end

    return hl
  end

  return 'BlinkCmpKind' .. ctx.kind
end

return {
  'saghen/blink.cmp',
  event = 'InsertEnter',
  version = '*',
  dependencies = {
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local luasnip = require 'luasnip'

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

    require('blink.cmp').setup {
      snippets = { preset = 'luasnip' },

      fuzzy = { implementation = 'prefer_rust_with_warning' },

      keymap = {
        preset = 'none',
        ['<C-p>'] = { 'select_prev', 'fallback' },
        ['<C-n>'] = { 'select_next', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
        ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },
        ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
      },

      appearance = {
        kind_icons = icons,
      },

      sources = {
        default = { 'snippets', 'lsp', 'buffer', 'path' },
      },

      completion = {
        accept = {
          auto_brackets = { enabled = true },
        },
        list = {
          selection = { preselect = false, auto_insert = true },
        },
        menu = {
          border = 'single',
          scrollbar = false,
          max_height = 50,
          draw = {
            columns = {
              { 'kind_icon' },
              { 'label', 'label_description', gap = 1 },
              { 'kind' },
            },
            components = {
              kind_icon = {
                highlight = color_highlight,
              },
            },
          },
        },
        documentation = {
          auto_show = true,
          window = { border = 'single' },
        },
      },
    }
  end,
}
