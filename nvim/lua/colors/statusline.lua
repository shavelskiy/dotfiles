local colors = require 'colors.colors'

local bubleBackgroud = colors.base02

return {
  { 'StatusLine', { bg = 'none' } },
  { 'StatusLineText', { fg = colors.base04, bg = bubleBackgroud } },
  { 'StatusLineSeparator', { fg = bubleBackgroud, bg = 'none' } },

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

  { 'StatusLineLspError', { fg = colors.base0F, bg = bubleBackgroud } },
  { 'StatusLineLspWarning', { fg = colors.base0A, bg = bubleBackgroud } },
  { 'StatusLineLspHints', { fg = colors.base0E, bg = bubleBackgroud } },
  { 'StatusLineLspInfo', { fg = colors.base0B, bg = bubleBackgroud } },
  { 'StatusLineLspStatus', { fg = colors.base0D, bg = bubleBackgroud } },
  { 'StatusLineLspProgress', { fg = colors.base0B, bg = bubleBackgroud } },

  { 'StatusLineGitAdded', { fg = colors.base0B, bg = bubleBackgroud } },
  { 'StatusLineGitChanged', { fg = colors.base0D, bg = bubleBackgroud } },
  { 'StatusLineGitRemoved', { fg = colors.base08, bg = bubleBackgroud } },

  { 'StatusLineDap', { fg = colors.base0B, bg = bubleBackgroud } },
}
