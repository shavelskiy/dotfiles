local colors = require 'colors.colors'

local hl = {
  add = '#182a2b',
  delete = '#2e1e27',
  change = '#262c4a',
  text = '#364068',
}

return {
  { 'DiffAdd', { bg = hl.add } },
  { 'DiffChange', { bg = hl.change } },
  { 'DiffDelete', { bg = hl.delete } },
  { 'DiffText', { bg = hl.text } },
  { 'DiffviewDiffAddAsDelete', { bg = hl.delete } },
  { 'DiffviewDiffDelete', { fg = colors.base02, bg = 'none' } },

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
