local x = vim.diagnostic.severity

vim.diagnostic.config {
  virtual_text = { prefix = '' },
  signs = { text = { [x.ERROR] = '󰅙', [x.WARN] = '', [x.INFO] = '󰋼', [x.HINT] = '󰌵' } },
  underline = true,
  update_in_insert = false,
  float = { border = 'single' },
}

vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover {
    border = 'single',
  }
end)
