return {
  { 'gD', vim.lsp.buf.declaration },
  { 'K', vim.lsp.buf.hover },

  { '<space>f', vim.lsp.buf.format, { 'n', 'v' } },

  { '[d', vim.diagnostic.goto_prev },
  { 'd]', vim.diagnostic.goto_next },
}
