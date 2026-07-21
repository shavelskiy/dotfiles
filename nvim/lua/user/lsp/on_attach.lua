return function(client, bufnr)
  local map = function(keys, fn, desc) vim.keymap.set('n', keys, fn, { buffer = bufnr, desc = desc, silent = true, noremap = true }) end

  map('K', function() vim.lsp.buf.hover { border = 'single' } end, 'Hover documentation')

  map('<leader>rn', vim.lsp.buf.rename, 'Rename symbol')

  if client.name ~= 'intelephense' then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end

  if client:supports_method('textDocument/documentHighlight') then
    local group = vim.api.nvim_create_augroup('lsp_document_highlight', { clear = false })
    vim.api.nvim_clear_autocmds { buffer = bufnr, group = group }
    vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
      group = group,
      buffer = bufnr,
      callback = vim.lsp.buf.document_highlight,
    })
    vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
      group = group,
      buffer = bufnr,
      callback = vim.lsp.buf.clear_references,
    })
  end
end
