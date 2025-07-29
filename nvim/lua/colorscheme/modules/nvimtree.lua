local colors = require 'colorscheme.colors'

local fontColor = { fg = colors.base0D }

return {
  { 'NvimTreeEmptyFolderName', fontColor },
  { 'NvimTreeEndOfBuffer', { fg = colors.base00 } },
  { 'NvimTreeFolderIcon', fontColor },
  { 'NvimTreeFolderName', fontColor },
  { 'NvimTreeIndentMarker', { fg = colors.base05 } },
  { 'NvimTreeNormal', { bg = colors.base00 } },
  { 'NvimTreeNormalNC', { bg = colors.base00 } },
  { 'NvimTreeOpenedFolderName', fontColor },
  { 'NvimTreeWinSeparator', { fg = colors.base00, bg = colors.base00 } },
  { 'NvimTreeWindowPicker', { fg = colors.base0F, bg = colors.base02 } },
  { 'NvimTreeCursorLine', { fg = 'none' } },
  { 'NvimTreeSpecialFile', { fg = colors.base06 } },
  { 'NvimTreeExecFile', { fg = colors.base06 } },
  { 'NvimTreeRootFolder', { fg = colors.base0F } },

  { 'NvimTreeGitDirty', { fg = colors.base0C } },
  { 'NvimTreeGitStaged', { fg = colors.base0B } },
  { 'NvimTreeGitMerge', { fg = colors.base0F } },
  { 'NvimTreeGitRenamed', { fg = colors.base0C } },
  { 'NvimTreeGitNew', { fg = colors.base08 } },
  { 'NvimTreeGitDeleted', { fg = colors.base08 } },
  { 'NvimTreeGitIgnored', { fg = colors.base05 } },
}
