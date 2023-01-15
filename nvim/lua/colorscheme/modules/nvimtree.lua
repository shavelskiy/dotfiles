local colors = require('colorscheme.scheme').get_colors()

local fontColor = { fg = colors.base0D }

return {
  { 'NvimTreeEmptyFolderName', fontColor },
  { 'NvimTreeEndOfBuffer', { fg = colors.darkerbg } },
  { 'NvimTreeFolderIcon', fontColor },
  { 'NvimTreeFolderName', fontColor },
  { 'NvimTreeIndentMarker', { fg = colors.base04 } },
  { 'NvimTreeNormal', { bg = colors.darkerbg } },
  { 'NvimTreeNormalNC', { bg = colors.darkerbg } },
  { 'NvimTreeOpenedFolderName', fontColor },
  { 'NvimTreeWinSeparator', { fg = colors.darkerbg, bg = colors.darkerbg } },
  { 'NvimTreeWindowPicker', { fg = colors.base0F, bg = colors.base01 } },
  { 'NvimTreeCursorLine', { fg = 'none' } },
  { 'NvimTreeSpecialFile', { fg = colors.base05 } },
  { 'NvimTreeExecFile', { fg = colors.base05 } },
  { 'NvimTreeRootFolder', { fg = colors.base0F } },

  { 'NvimTreeGitDirty', { fg = colors.base0C } },
  { 'NvimTreeGitStaged', { fg = colors.base0B } },
  { 'NvimTreeGitMerge', { fg = colors.base0F } },
  { 'NvimTreeGitRenamed', { fg = colors.base0C } },
  { 'NvimTreeGitNew', { fg = colors.base08 } },
  { 'NvimTreeGitDeleted', { fg = colors.base08 } },
  { 'NvimTreeGitIgnored', { fg = colors.base04 } },
}
