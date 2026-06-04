return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('ibl').setup {
      indent = { char = '│', highlight = { 'IblIndent' } },
      whitespace = { highlight = { 'IblWhitespace' } },
      scope = { enabled = false },
    }
  end,
}
