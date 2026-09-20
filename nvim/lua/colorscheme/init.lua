if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end

local colors = require 'colorscheme.colors'

vim.g.terminal_color_0 = colors.base00
vim.g.terminal_color_1 = colors.base08
vim.g.terminal_color_2 = colors.base0B
vim.g.terminal_color_3 = colors.base0A
vim.g.terminal_color_4 = colors.base0D
vim.g.terminal_color_5 = colors.base0E
vim.g.terminal_color_6 = colors.base0C
vim.g.terminal_color_7 = colors.base05
vim.g.terminal_color_8 = colors.base03
vim.g.terminal_color_9 = colors.base09
vim.g.terminal_color_10 = colors.base0B
vim.g.terminal_color_11 = colors.base0A
vim.g.terminal_color_12 = colors.base0D
vim.g.terminal_color_13 = colors.base0E
vim.g.terminal_color_14 = colors.base0C
vim.g.terminal_color_15 = colors.base07

local modules = {
  'cmp',
  'dap',
  'diffview',
  'general',
  'gitsigns',
  'indentline',
  'lazy',
  'leap',
  'lsp',
  'mason',
  'nvimtree',
  'statusline',
  'syntax',
  'tabline',
  'telescope',
  'treesitter',
  'override',
}

local hl = function(groups)
  for _, data in pairs(groups) do
    vim.api.nvim_set_hl(0, data[1], data[2])
  end
end

for _, name in ipairs(modules) do
  hl(require('colorscheme.modules.' .. name))
end
