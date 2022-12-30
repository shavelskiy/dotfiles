local colors = require 'colors.colors'

return {
  { 'StatusLine', { bg = 'none' } },
  { 'StatusLineText', { fg = colors.base04, bg = colors.base01 } },
  { 'StatusLineSeparator', { fg = colors.base01, bg = 'none' } },

  { 'StatusLineNormalMode', { bg = colors.base0D, fg = colors.base00, bold = true } },
  { 'StatusLineInsertMode', { bg = colors.base0E, fg = colors.base00, bold = true } },
  { 'StatusLineTerminalMode', { bg = colors.base0B, fg = colors.base00, bold = true } },
  { 'StatusLineNTerminalMode', { bg = colors.base0A, fg = colors.base00, bold = true } },
  { 'StatusLineVisualMode', { bg = colors.base0C, fg = colors.base00, bold = true } },
  { 'StatusLineReplaceMode', { bg = colors.base08, fg = colors.base00, bold = true } },
  { 'StatusLineConfirmMode', { bg = colors.base09, fg = colors.base00, bold = true } },
  { 'StatusLineCommandMode', { bg = colors.base0B, fg = colors.base00, bold = true } },
  { 'StatusLineSelectMode', { bg = colors.base0D, fg = colors.base00, bold = true } },

  { 'StatusLineNormalModeSep', { fg = colors.base0D, bg = 'none' } },
  { 'StatusLineInsertModeSep', { fg = colors.base0E, bg = 'none' } },
  { 'StatusLineTerminalModeSep', { fg = colors.base0B, bg = 'none' } },
  { 'StatusLineNTerminalModeSep', { fg = colors.base0A, bg = 'none' } },
  { 'StatusLineVisualModeSep', { fg = colors.base0C, bg = 'none' } },
  { 'StatusLineReplaceModeSep', { fg = colors.base08, bg = 'none' } },
  { 'StatusLineConfirmModeSep', { fg = colors.base09, bg = 'none' } },
  { 'StatusLineCommandModeSep', { fg = colors.base0B, bg = 'none' } },
  { 'StatusLineSelectModeSep', { fg = colors.base0D, bg = 'none' } },

  { 'StatusLineLspError', { fg = colors.base0F, bg = colors.base01 } },
  { 'StatusLineLspWarning', { fg = colors.base0A, bg = colors.base01 } },
  { 'StatusLineLspHints', { fg = colors.base0E, bg = colors.base01 } },
  { 'StatusLineLspInfo', { fg = colors.base0B, bg = colors.base01 } },
  { 'StatusLineLspStatus', { fg = colors.base0D, bg = colors.base01 } },
  { 'StatusLineLspProgress', { fg = colors.base0B, bg = colors.base01 } },

  { 'StatusLineGitAdded', { fg = colors.base0B, bg = colors.base01 } },
  { 'StatusLineGitChanged', { fg = colors.base0D, bg = colors.base01 } },
  { 'StatusLineGitRemoved', { fg = colors.base08, bg = colors.base01 } },

  { 'StatusLineDap', { fg = colors.base0B, bg = colors.base01 } },
}
