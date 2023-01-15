local nvim_lsp = require 'lspconfig'

require('user.utils').mapping 'lsp'

for _, server in pairs(require 'user.servers') do
  nvim_lsp[server].setup(require('user.servers.' .. server))
end
