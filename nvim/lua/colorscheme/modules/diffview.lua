local colors = require 'colorscheme.colors'

local hl = {
  add = '#182a2b',
  delete = '#2e1e27',
  change = '#262c4a',
  text = '#364068',
}

return {
  { 'DiffAdd', { fg = colors.base0B, bg = hl.add } },
  { 'DiffChange', { fg = colors.base04, bg = hl.change } },
  { 'DiffDelete', { fg = colors.base08, bg = hl.delete } },
  { 'DiffText', { fg = colors.base0D, bg = hl.text } },
  { 'DiffAdded', { fg = colors.base0B, bg = hl.add } },
  { 'DiffFile', { fg = colors.base08, bg = colors.base01 } },
  { 'DiffNewFile', { fg = colors.base0B, bg = hl.add } },
  { 'DiffLine', { fg = colors.base0D, bg = colors.base01 } },
  { 'DiffRemoved', { fg = colors.base08, bg = hl.delete } },

  { 'DiffviewDiffAddAsDelete', { bg = hl.delete } },
  { 'DiffviewDiffDelete', { fg = colors.base03, bg = 'none' } },

  { 'DiffviewEndOfBuffer', { bg = colors.base00 } },
  { 'DiffviewNormal', { fg = colors.base0D, bg = colors.base00 } },
  { 'DiffviewWinSeparator', { fg = colors.base00, bg = colors.base00 } },

  { 'DiffviewFilePanelRootPath', { fg = colors.base0D } },
  { 'DiffviewFilePanelInsertions', { fg = colors.base0B } },
  { 'DiffviewFilePanelDeletions', { fg = colors.base08 } },
  { 'DiffviewFilePanelConflicts', { fg = colors.base0F } },
  { 'DiffviewFolderSign', { fg = colors.base0D } },

  { 'DiffviewFilePanelTitle', { fg = colors.base0D } },
  { 'DiffviewFilePanelCounter', { fg = colors.base06 } },
}
