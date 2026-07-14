local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, blink = pcall(require, 'blink.cmp')
if ok then capabilities = blink.get_lsp_capabilities(capabilities) end

local on_attach = require 'user.lsp.on_attach'

local getConfig = function(server)
  local settings = require('user.servers.' .. server)
  settings.on_attach = on_attach

  return settings
end

vim.lsp.config('*', {
  capabilities = capabilities,
})

for _, server in ipairs(require 'user.servers') do
  vim.lsp.config(server, getConfig(server))
  vim.lsp.enable(server)
end

local x = vim.diagnostic.severity

vim.diagnostic.config {
  virtual_text = { prefix = '' },
  signs = { text = { [x.ERROR] = '󰅙', [x.WARN] = '', [x.INFO] = '󰋼', [x.HINT] = '󰌵' } },
  underline = true,
  update_in_insert = false,
  float = { border = 'single' },
}
