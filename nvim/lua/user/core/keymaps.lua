vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymaps = {
  { 'n', 'i', function() return vim.fn.getline('.'):match '^%s*$' and 'cc' or 'i' end, { expr = true } },
  { 'n', '<CR>', 'o<ESC>' },
  { 'n', '<S-CR>', 'O<ESC>' },

  { 'n', '<ESC>', ':noh <cr>' },

  { 'n', 'te', ':tabedit %<cr>' },
  { 'n', 'tq', ':tabclose <cr>' },

  { 'n', '<C-h>', '<C-w>h' },
  { 'n', '<C-k>', '<C-w>k' },
  { 'n', '<C-j>', '<C-w>j' },
  { 'n', '<C-l>', '<C-w>l' },

  { 'n', '<Up>', '<C-w>1+' },
  { 'n', '<Down>', '<C-w>1-' },
  { 'n', '<Left>', '<C-w>5>' },
  { 'n', '<Right>', '<C-w>5<' },

  { 'n', 'J', 'mzJ`z' },

  { 'n', 'n', 'nzzzv' },
  { 'n', 'N', 'Nzzzv' },

  { 'x', '<leader>p', '"_dP' },
  { 'n', 'x', '"_x' },

  { 'n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
  { { 'n', 'v' }, '<leader>d', [["_d]] },

  { 'i', '<C-j>', '<Esc>:m .+1<CR>==gi' },
  { 'i', '<C-k>', '<Esc>:m .-2<CR>==gi' },
  { 'x', '<C-j>', ":move '>+1<CR>gv=gv" },
  { 'x', '<C-k>', ":move '<-2<CR>gv=gv" },
}

for _, map in pairs(keymaps) do
  local default_options = { silent = true, noremap = true }
  local options = map[4] and vim.tbl_extend('keep', map[4], default_options) or default_options
  vim.keymap.set(map[1], map[2], map[3], options)
end
