vim.diagnostic.config {
  virtual_text = {
    prefix = '',
  },
  signs = true,
  underline = true,
  update_in_insert = false,
}

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = 'single',
})
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = 'single',
  focusable = false,
  relative = 'cursor',
})
