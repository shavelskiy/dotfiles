local dap = require 'dap'

dap.adapters.go = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = { 'dap', '-l', '127.0.0.1:${port}' },
  },
  options = {
    initialize_timeout_sec = 20,
  },
}

dap.configurations.go = {
  {
    type = 'go',
    request = 'launch',
    name = 'Debug',
    program = '${file}',
  },
}
