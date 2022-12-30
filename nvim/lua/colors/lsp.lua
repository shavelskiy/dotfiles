local function createSymbol(name, icon)
  local hl = 'DiagnosticSign' .. name
  vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

createSymbol('Error', '')
createSymbol('Info', '')
createSymbol('Hint', '')
createSymbol('Warn', '')

return {}
