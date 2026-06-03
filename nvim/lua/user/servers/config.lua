local on_attach = function(client)
  if client.name ~= 'intelephense' then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end
end

local getConfig = function(server)
  local settings = require('user.servers.' .. server)
  settings.on_attach = on_attach

  return settings
end

vim.lsp.config('*', {
  capabilities = vim.lsp.protocol.make_client_capabilities(),
})

for _, server in pairs(require 'user.servers.init') do
  vim.lsp.config(server, getConfig(server))
  vim.lsp.enable(server, false)
end

local x = vim.diagnostic.severity

vim.diagnostic.config {
  virtual_text = { prefix = '' },
  signs = { text = { [x.ERROR] = '󰅙', [x.WARN] = '', [x.INFO] = '󰋼', [x.HINT] = '󰌵' } },
  underline = true,
  update_in_insert = false,
  float = { border = 'single' },
}

vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover {
    border = 'single',
  }
end)
