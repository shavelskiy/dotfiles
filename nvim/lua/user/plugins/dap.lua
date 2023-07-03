return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
  },
  config = function()
    require('dapui').setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '▸' },
      layouts = {
        {
          elements = {
            { id = 'scopes', size = 0.5 },
            { id = 'breakpoints', size = 0.25 },
            { id = 'stacks', size = 0.25 },
          },
          size = 0.25,
          position = 'right',
        },
      },
      controls = {
        enabled = false,
      },
    }

    local dap = require 'dap'

    dap.adapters.php = {
      type = 'executable',
      command = 'node',
      args = { os.getenv 'HOME' .. '/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js' },
    }

    dap.configurations.php = {
      {
        type = 'php',
        request = 'launch',
        name = 'xdeubg (9003) | application',
        port = 9003,
        serverSourceRoot = '/application',
        localSourceRoot = '${workspaceFolder}',
      },
      {
        type = 'php',
        request = 'launch',
        name = 'xdeubg (9003) | service',
        port = 9003,
        serverSourceRoot = '/service',
        localSourceRoot = '${workspaceFolder}',
      },
    }
  end,
  keys = {
    { '<F6>', function() require('dap').step_over() end },
    { '<F7>', function() require('dap').step_into() end },
    { '<F8>', function() require('dap').step_out() end },

    { '<leader>dt', function() require('dap').toggle_breakpoint() end },
    { '<leader>dc', function() require('dap').continue() end },

    { '<leader>di', function() require('dapui').toggle() end },
    { '<leader>df', function() require('dapui').float_element('scopes', { enter = true }) end },
  },
}
