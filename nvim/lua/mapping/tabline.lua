local api = require 'tabline.api'

return {
  { '<S-Tab>', api.prev_tab },
  { '<Tab>', api.next_tab },

  {
    '<leader>dj',
    function() api.move_buf(-1) end,
  },
  {
    '<leader>dl',
    function() api.move_buf(1) end,
  },

  { '<Bslash>', api.pick },

  { '<leader>x', api.close_buffer },
}
