return {
  'neovim/nvim-lspconfig',
  config = function() require 'user.servers.config' end,
  keys = {
    { '<space>f', vim.lsp.buf.format, mode = { 'n', 'v' } },
    { '<leader>ca', vim.lsp.buf.code_action },
  },
}
