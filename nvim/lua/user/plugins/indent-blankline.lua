return {
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    local highlight = {
      'CursorColumn',
    }
    require('ibl').setup {
      indent = { highlight = highlight, char = '│' },
      whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
    }
  end,
}
