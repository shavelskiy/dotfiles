local dap = require 'dap'
local dapui = require 'dapui'

return {
  { '<F6>', dap.step_over },
  { '<F7>', dap.step_into },
  { '<F8>', dap.step_out },

  { '<leader>dt', dap.toggle_breakpoint },
  { '<leader>dc', dap.continue },

  { '<leader>di', dapui.toggle },
  {
    '<leader>df',
    function() dapui.float_element('scopes', { enter = true }) end,
  },
}
