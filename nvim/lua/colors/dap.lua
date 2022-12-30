local colors = require 'colors.colors'

local function createSymbol(name, link, icon)
  vim.fn.sign_define(name, { text = icon, texthl = link, linehl = link, numhl = link })
end

createSymbol('DapBreakpoint', 'DapBreakpoint', '')
createSymbol('DapBreakpointCondition', 'DapBreakpoint', 'ﳁ')
createSymbol('DapBreakpointRejected', 'DapBreakpoint', '')
createSymbol('DapLogPoint', 'DapLogPoint', '')
createSymbol('DapStopped', 'DapStopped', '')

return {
  { 'DapBreakpoint', { fg = colors.base08, bg = colors.base03 } },
  { 'DapLogPoint', { fg = colors.base0D, bg = colors.base03 } },
  { 'DapStopped', { fg = colors.base0B, bg = colors.base03 } },

  { 'DapUIScope', { fg = colors.base0D } },
  { 'DapUIType', { fg = colors.base0E } },
  { 'DapUIModifiedValue', { fg = colors.base0B, bold = true } },
  { 'DapUIDecoration', { fg = colors.base0D } },
  { 'DapUIThread', { fg = colors.base0D } },
  { 'DapUIStoppedThread', { fg = colors.base0D } },
  { 'DapUISource', { fg = colors.base0D } },
  { 'DapUILineNumber', { fg = colors.base0B } },
  { 'DapUIFloatBorder', { fg = colors.base03 } },
  { 'DapUIBreakpointsPath', { fg = colors.base0D } },
  { 'DapUIBreakpointsInfo', { fg = colors.base0D } },
  { 'DapUIBreakpointsCurrentLine', { fg = colors.base0B, bold = true } },
  { 'DapUIBreakpointsDisabledLine', { fg = colors.base0F } },
}
