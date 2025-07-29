local colors = require 'colorscheme.colors'

local function createSymbol(name, icon)
  local hl = 'DiagnosticSign' .. name
  vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

createSymbol('Error', '')
createSymbol('Info', '')
createSymbol('Hint', '')
createSymbol('Warn', '')

return {
  { 'DiagnosticError', { fg = colors.base08 } },
  { 'DiagnosticWarn', { fg = colors.base0E } },
  { 'DiagnosticInfo', { fg = colors.base06 } },
  { 'DiagnosticHint', { fg = colors.base0C } },
  { 'DiagnosticUnderlineError', { undercurl = true, sp = colors.base08 } },
  { 'DiagnosticUnderlineWarning', { undercurl = true, sp = colors.base0E } },
  { 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.base0E } },
  { 'DiagnosticUnderlineInformation', { undercurl = true, sp = colors.base0F } },
  { 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.base0C } },

  { 'LspReferenceText', { underline = true, sp = colors.base05 } },
  { 'LspReferenceRead', { underline = true, sp = colors.base05 } },
  { 'LspReferenceWrite', { underline = true, sp = colors.base05 } },
  { 'LspDiagnosticsDefaultError', { link = 'DiagnosticError' } },
  { 'LspDiagnosticsDefaultWarning', { link = 'DiagnosticWarn' } },
  { 'LspDiagnosticsDefaultInformation', { link = 'DiagnosticInfo' } },
  { 'LspDiagnosticsDefaultHint', { link = 'DiagnosticHint' } },
  { 'LspDiagnosticsUnderlineError', { link = 'DiagnosticUnderlineError' } },
  { 'LspDiagnosticsUnderlineWarning', { link = 'DiagnosticUnderlineWarning' } },
  { 'LspDiagnosticsUnderlineInformation', { link = 'DiagnosticUnderlineInformation' } },
  { 'LspDiagnosticsUnderlineHint', { link = 'DiagnosticUnderlineHint' } },
}
