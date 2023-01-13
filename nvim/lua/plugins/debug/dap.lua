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
