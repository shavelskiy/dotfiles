return {
  { '<leader>/', require('Comment.api').toggle.linewise.current },
  { '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", 'v' },
}
