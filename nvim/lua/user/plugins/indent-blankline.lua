return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local highlight = {
      'CursorColumn',
    }
    require('ibl').setup {
      indent = { highlight = highlight, char = '│' },
      scope = { enabled = false },
    }
  end,
}
