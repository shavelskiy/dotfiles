local nvim_lsp = require 'lspconfig'

local on_attach = function(client, bufnr)
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

for _, server in pairs(require 'user.servers.init') do
  nvim_lsp[server].setup(getConfig(server))
end
