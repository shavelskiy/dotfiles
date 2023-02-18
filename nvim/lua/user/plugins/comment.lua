return {
  'numToStr/Comment.nvim',
  config = function() require('Comment').setup {} end,
  keys = {
    { '<leader>/', function() require('Comment.api').toggle.linewise.current() end },
    { '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", mode = 'v' },
  },
}
