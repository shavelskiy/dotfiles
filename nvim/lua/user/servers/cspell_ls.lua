local default_handler = vim.lsp.handlers['textDocument/publishDiagnostics']

return {
  filetypes = nil,
  handlers = {
    ['textDocument/publishDiagnostics'] = function(err, result, ctx, config)
      if result and result.diagnostics then
        local severity = vim.lsp.protocol.DiagnosticSeverity.Error
        for _, diagnostic in ipairs(result.diagnostics) do
          diagnostic.severity = severity
        end
      end
      return default_handler(err, result, ctx, config)
    end,
  },
}
