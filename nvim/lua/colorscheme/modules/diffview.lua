local colors = require('colorscheme.scheme').get_colors()

local hl = {
  add = '#182a2b',
  delete = '#2e1e27',
  change = '#262c4a',
  text = '#364068',
}

return {
  { 'DiffAdd', { fg = colors.base0B, bg = colors.base00 } },
  { 'DiffChange', { fg = colors.base03, bg = colors.base00 } },
  { 'DiffDelete', { fg = colors.base08, bg = colors.base00 } },
  { 'DiffText', { fg = colors.base0D, bg = colors.base00 } },
  { 'DiffAdded', { fg = colors.base0B, bg = colors.base00 } },
  { 'DiffFile', { fg = colors.base08, bg = colors.base00 } },
  { 'DiffNewFile', { fg = colors.base0B, bg = colors.base00 } },
  { 'DiffLine', { fg = colors.base0D, bg = colors.base00 } },
  { 'DiffRemoved', { fg = colors.base08, bg = colors.base00 } },

  { 'DiffAdd', { bg = hl.add } },
  { 'DiffChange', { bg = hl.change } },
  { 'DiffDelete', { bg = hl.delete } },
  { 'DiffText', { bg = hl.text } },
  { 'DiffviewDiffAddAsDelete', { bg = hl.delete } },
  { 'DiffviewDiffDelete', { fg = colors.base02, bg = 'none' } },

  { 'DiffviewEndOfBuffer', { bg = colors.darkerbg } },
  { 'DiffviewNormal', { fg = colors.base0D, bg = colors.darkerbg } },
  { 'DiffviewWinSeparator', { fg = colors.darkerbg, bg = colors.darkerbg } },

  { 'DiffviewFilePanelRootPath', { fg = colors.base0D } },
  { 'DiffviewFilePanelInsertions', { fg = colors.base0B } },
  { 'DiffviewFilePanelDeletions', { fg = colors.base08 } },
  { 'DiffviewFilePanelConflicts', { fg = colors.base0F } },
  { 'DiffviewFolderSign', { fg = colors.base0D } },

  { 'DiffviewFilePanelTitle', { fg = colors.base0D } },
  { 'DiffviewFilePanelCounter', { fg = colors.base06 } },
}
