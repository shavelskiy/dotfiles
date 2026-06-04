return {
  filetypes = nil,
  handlers = {
    ['textDocument/publishDiagnostics'] = function(err, result, ctx, config)
      if result and result.diagnostics then
        for _, diagnostic in ipairs(result.diagnostics) do
          diagnostic.severity = vim.lsp.protocol.DiagnosticSeverity.Error
        end
      end
      return vim.lsp.diagnostic.on_publish_diagnostics(err, result, ctx, config)
    end,
  },
}
