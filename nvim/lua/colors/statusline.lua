local colors = require 'colors.colors'

return {
  { 'StatusLine', { bg = colors.base01 } },
  { 'StatusLineText', { fg = colors.base04, bg = colors.base02 } },
  { 'StatusLineSeparator', { fg = colors.base02, bg = colors.base01 } },

  { 'StatusLineNormalMode', { bg = colors.base0D, fg = colors.base01, bold = true } },
  { 'StatusLineInsertMode', { bg = colors.base0E, fg = colors.base01, bold = true } },
  { 'StatusLineTerminalMode', { bg = colors.base0B, fg = colors.base01, bold = true } },
  { 'StatusLineNTerminalMode', { bg = colors.base0A, fg = colors.base01, bold = true } },
  { 'StatusLineVisualMode', { bg = colors.base0C, fg = colors.base01, bold = true } },
  { 'StatusLineReplaceMode', { bg = colors.base08, fg = colors.base01, bold = true } },
  { 'StatusLineConfirmMode', { bg = colors.base09, fg = colors.base01, bold = true } },
  { 'StatusLineCommandMode', { bg = colors.base0B, fg = colors.base01, bold = true } },
  { 'StatusLineSelectMode', { bg = colors.base0D, fg = colors.base01, bold = true } },

  { 'StatusLineNormalModeSep', { fg = colors.base0D, bg = colors.base01 } },
  { 'StatusLineInsertModeSep', { fg = colors.base0E, bg = colors.base01 } },
  { 'StatusLineTerminalModeSep', { fg = colors.base0B, bg = colors.base01 } },
  { 'StatusLineNTerminalModeSep', { fg = colors.base0A, bg = colors.base01 } },
  { 'StatusLineVisualModeSep', { fg = colors.base0C, bg = colors.base01 } },
  { 'StatusLineReplaceModeSep', { fg = colors.base08, bg = colors.base01 } },
  { 'StatusLineConfirmModeSep', { fg = colors.base09, bg = colors.base01 } },
  { 'StatusLineCommandModeSep', { fg = colors.base0B, bg = colors.base01 } },
  { 'StatusLineSelectModeSep', { fg = colors.base0D, bg = colors.base01 } },

  { 'StatusLineLspError', { fg = colors.base0F, bg = colors.base02 } },
  { 'StatusLineLspWarning', { fg = colors.base0A, bg = colors.base02 } },
  { 'StatusLineLspHints', { fg = colors.base0E, bg = colors.base02 } },
  { 'StatusLineLspInfo', { fg = colors.base0B, bg = colors.base02 } },
  { 'StatusLineLspStatus', { fg = colors.base0D, bg = colors.base02 } },
  { 'StatusLineLspProgress', { fg = colors.base0B, bg = colors.base02 } },

  { 'StatusLineGitAdded', { fg = colors.base0B, bg = colors.base02 } },
  { 'StatusLineGitChanged', { fg = colors.base0D, bg = colors.base02 } },
  { 'StatusLineGitRemoved', { fg = colors.base08, bg = colors.base02 } },

  { 'StatusLineDap', { fg = colors.base0B, bg = colors.base02 } },
}
