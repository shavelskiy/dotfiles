local api = require 'tabline.api'

return {
  { '<S-Tab>', function() api.goto_buffer_relative(-1) end },
  { '<Tab>', function() api.goto_buffer_relative(1) end },

  { '<leader>dj', function() api.move_current_buffer(-1) end },
  { '<leader>dl', function() api.move_current_buffer(1) end },

  { '<leader>x', require('tabline.bbye').delete },

  { '<leader>bb', api.order_by_buffer_number },
  { '<leader>bl', api.order_by_language },
}
