if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end

local modules = {
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
