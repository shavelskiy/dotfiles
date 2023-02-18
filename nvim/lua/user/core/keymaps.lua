local keymaps = {
  { '<ESC>', ':noh <cr>' },

  { 'te', ':tabedit <cr>' },
  { 'tq', ':tabclose <cr>' },

  { '<C-h>', '<C-w>h' },
  { '<C-k>', '<C-w>k' },
  { '<C-j>', '<C-w>j' },
  { '<C-l>', '<C-w>l' },

  { 'J', ":m '>+1<CR>gv=gv", 'v' },
  { 'K', ":m '<-2<CR>gv=gv", 'v' },

  { 'J', 'mzJ`z' },

  { 'n', 'nzzzv' },
  { 'N', 'Nzzzv' },

  { '<leader>p', '"_dP', 'x' },
  { 'x', '"_x' },

  { '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },

  { '<leader>d', [["_d]], { 'n', 'v' } },
}

for _, map in pairs(keymaps) do
  vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], { noremap = true, silent = true })
end
