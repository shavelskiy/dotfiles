local nvim_lsp = require 'lspconfig'

require('utils').mapping 'lsp'

for _, server in pairs(require 'servers') do
  nvim_lsp[server].setup(require('servers.' .. server))
end
