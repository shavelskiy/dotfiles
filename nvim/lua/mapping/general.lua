return {
  { '<ESC>', ':noh <cr>' },

  { '<C-s>', ':w<cr>' },

  { 'tn', ':tabedit <cr>' },
  { 'tq', ':tabclose <cr>' },

  { '<C-h>', '<C-w>h' },
  { '<C-k>', '<C-w>k' },
  { '<C-j>', '<C-w>j' },
  { '<C-l>', '<C-w>l' },

  { 'J', ":m '>+1<CR>gv=gv", 'v' },
  { 'K', ":m '<-2<CR>gv=gv", 'v' },

  { 'J', 'mzJ`z' },

  -- { '<C-d>', '<C-d>zz' },
  -- { '<C-u>', '<C-u>zz' },

  { 'n', 'nzzzv' },
  { 'N', 'Nzzzv' },

  { '<leader>p', [["_dP]], 'x' },

  { '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },

  { '<leader>d', [["_d]], { 'n', 'v' } },
}
