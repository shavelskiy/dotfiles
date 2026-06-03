return function(client, bufnr)
  local map = function(keys, fn, desc) vim.keymap.set('n', keys, fn, { buffer = bufnr, desc = desc, silent = true, noremap = true }) end

  map('K', function() vim.lsp.buf.hover { border = 'single' } end, 'Hover documentation')

  map('<leader>rn', vim.lsp.buf.rename, 'Rename symbol')

  if client.name ~= 'intelephense' then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end
end
