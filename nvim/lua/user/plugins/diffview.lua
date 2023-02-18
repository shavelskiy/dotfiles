return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true,
      show_help_hints = false,
      icons = {
        folder_closed = '',
        folder_open = '',
      },
    }
  end,
  keys = {
    { '<leader>gd', ':DiffviewOpen<CR>' },
    { '<leader>gh', ':DiffviewFileHistory %<CR>' },
  },
}
