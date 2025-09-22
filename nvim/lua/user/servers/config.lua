local on_attach = function(client)
  if client.name ~= 'intelephense' then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end
end

local getConfig = function(server)
  local settings = require('user.servers.' .. server)
  settings.on_attach = on_attach

  return settings
end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp_buf_conf', { clear = true }),
  callback = function(event_context)
    local client = vim.lsp.get_client_by_id(event_context.data.client_id)

    if not client then return end

    local bufnr = event_context.buf

    vim.keymap.set('n', 'K', function()
      vim.lsp.buf.hover {
        border = 'single',
      }
    end)

    if client.server_capabilities.documentHighlightProvider then
      local gid = vim.api.nvim_create_augroup('lsp_document_highlight', { clear = true })
      vim.api.nvim_create_autocmd('CursorHold', {
        group = gid,
        buffer = bufnr,
        callback = function() vim.lsp.buf.document_highlight() end,
      })

      vim.api.nvim_create_autocmd('CursorMoved', {
        group = gid,
        buffer = bufnr,
        callback = function() vim.lsp.buf.clear_references() end,
      })
    end
  end,
  nested = true,
  desc = 'Configure buffer keymap and behavior based on LSP',
})

vim.lsp.config('*', {
  capabilities = vim.lsp.protocol.make_client_capabilities(),
})

for _, server in pairs(require 'user.servers.init') do
  vim.lsp.config(server, getConfig(server))
  vim.lsp.enable(server)
end
