local dap = require 'dap'

dap.adapters.php = {
  type = 'executable',
  command = 'php-debug-adapter',
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
}
