local colors = require 'colors.colors'

return {
  { 'MatchWord', { bg = colors.base03, fg = colors.base05 } },

  { 'Pmenu', { bg = colors.base02 } },
  { 'PmenuSbar', { bg = colors.base02 } },
  { 'PmenuSel', { bg = colors.base0D, fg = colors.base01 } },
  { 'PmenuThumb', { bg = colors.base03 } },

  { 'MatchParen', { link = 'MatchWord' } },

  { 'Comment', { fg = colors.base04, italic = true } },

  { 'CursorLineNr', { fg = colors.base05 } },
  { 'LineNr', { fg = colors.base03 } },

  -- floating windows
  { 'FloatBorder', { fg = colors.base03, bg = colors.base00 } },
  { 'NormalFloat', { bg = colors.base00 } },

  { 'NvimInternalError', { fg = colors.base0F } },
  { 'WinSeparator', { fg = colors.base02 } },

  { 'Normal', { fg = colors.base05, bg = colors.base01 } },
  { 'Bold', { bold = true } },
  { 'Debug', { fg = colors.base08 } },
  { 'Directory', { fg = colors.base0D } },
  { 'Error', { fg = colors.base01, bg = colors.base08 } },
  { 'ErrorMsg', { fg = colors.base08, bg = colors.base01 } },
  { 'Exception', { fg = colors.base08 } },
  { 'FoldColumn', { fg = colors.base0C, bg = colors.base02 } },
  { 'Folded', { fg = colors.base04, bg = colors.base02 } },
  { 'IncSearch', { fg = colors.base02, bg = colors.base09 } },
  { 'Italic', { italic = true } },
  { 'Macro', { fg = colors.base08 } },
  { 'ModeMsg', { fg = colors.base0B } },
  { 'MoreMsg', { fg = colors.base0B } },
  { 'Question', { fg = colors.base0D } },
  { 'Search', { fg = colors.base02, bg = colors.base0A } },
  { 'Substitute', { fg = colors.base02, bg = colors.base0A } },
  { 'SpecialKey', { fg = colors.base04 } },
  { 'TooLong', { fg = colors.base08 } },
  { 'UnderLined', { fg = colors.base0B } },
  { 'Visual', { bg = colors.base03 } },
  { 'VisualNOS', { fg = colors.base08 } },
  { 'WarningMsg', { fg = colors.base08 } },
  { 'WildMenu', { fg = colors.base08, bg = colors.base0A } },
  { 'Title', { fg = colors.base0D } },
  { 'Conceal', { bg = 'none' } },
  { 'Cursor', { fg = colors.base01, bg = colors.base05 } },
  { 'NonText', { fg = colors.base04 } },
  { 'SignColumn', { fg = colors.base04 } },
  { 'ColorColumn', { bg = colors.base02 } },
  { 'CursorColumn', { bg = colors.base02 } },
  { 'CursorLine', { bg = colors.base02 } },
  { 'QuickFixLine', { bg = colors.base02 } },

  -- spell
  { 'SpellBad', { undercurl = true, sp = colors.base08 } },
  { 'SpellLocal', { undercurl = true, sp = colors.base0C } },
  { 'SpellCap', { undercurl = true, sp = colors.base0D } },
  { 'SpellRare', { undercurl = true, sp = colors.base0E } },
}
