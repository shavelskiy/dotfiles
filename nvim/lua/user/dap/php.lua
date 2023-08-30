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
