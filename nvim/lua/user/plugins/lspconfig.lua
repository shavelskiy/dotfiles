return {
  'neovim/nvim-lspconfig',
  dependencies = { 'hrsh7th/cmp-nvim-lsp' },
  config = function() require 'user.servers.config' end,
  keys = {
    { '<leader>ca', vim.lsp.buf.code_action, desc = 'Code action' },
  },
}
