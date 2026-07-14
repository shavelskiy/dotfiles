return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },
  config = function() require 'user.servers.config' end,
  keys = {
    { '<leader>ca', vim.lsp.buf.code_action, desc = 'Code action' },
  },
}
