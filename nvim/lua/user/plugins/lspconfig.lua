return {
  'neovim/nvim-lspconfig',
  config = function() require 'user.servers.config' end,
  keys = {
    { 'gD', vim.lsp.buf.declaration },
    { 'K', vim.lsp.buf.hover },

    { '<space>f', vim.lsp.buf.format, mode = { 'n', 'v' } },
    { '<leader>ca', vim.lsp.buf.code_action },
  },
}
