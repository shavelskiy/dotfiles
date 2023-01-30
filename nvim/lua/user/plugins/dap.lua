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
    name = 'listen for xdeubg',
    port = 9003,
    serverSourceRoot = '/application',
    localSourceRoot = '${workspaceFolder}',
  },
}

require('user.utils').mapping 'dap'
