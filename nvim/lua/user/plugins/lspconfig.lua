return {
  'neovim/nvim-lspconfig',
  config = function() require 'user.servers.config' end,
  keys = {
    { 'gD', vim.lsp.buf.declaration },
    { 'K', vim.lsp.buf.hover },

    { '<space>f', vim.lsp.buf.format, mode = { 'n', 'v' } },

    { '[d', vim.diagnostic.goto_prev },
    { 'd]', vim.diagnostic.goto_next },

    { '<leader>ca', vim.lsp.buf.code_action },
  },
}
