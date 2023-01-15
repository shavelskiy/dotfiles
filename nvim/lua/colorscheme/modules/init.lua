local get_theme = require('colorscheme.scheme').get_theme

local modules = {
  'alpha',
  'cmp',
  'dap',
  'diffview',
  'general',
  'gitsigns',
  'illuminate',
  'indentline',
  'lazy',
  'lsp',
  'mason',
  'nvimtree',
  'statusline',
  'tabline',
  'telescope',
  'treesitter',
}

local hl = function(groups)
  for _, data in pairs(groups) do
    vim.api.nvim_set_hl(0, data[1], data[2])
  end
end

for _, name in ipairs(modules) do
  hl(require('colorscheme.modules.' .. name))
end

hl(require 'colorscheme.themes.override.init')
hl(require('colorscheme.themes.override.' .. get_theme()))
