return {
  'ggandor/leap.nvim',
  config = function() require 'leap' end,
  keys = {
    { 's', '<Plug>(leap-forward)', mode = { 'n', 'x', 'o' } },
    { 'S', '<Plug>(leap-backward)', mode = { 'n', 'x', 'o' } },
  },
}
