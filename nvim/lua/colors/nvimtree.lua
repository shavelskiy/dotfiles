local colors = require 'colors.colors'

local fontColor = { fg = colors.base0D }

return {
  { 'NvimTreeEmptyFolderName', fontColor },
  { 'NvimTreeEndOfBuffer', { fg = colors.base00 } },
  { 'NvimTreeFolderIcon', fontColor },
  { 'NvimTreeFolderName', fontColor },
  { 'NvimTreeIndentMarker', { fg = colors.base04 } },
  { 'NvimTreeNormal', { bg = colors.base00 } },
  { 'NvimTreeNormalNC', { bg = colors.base00 } },
  { 'NvimTreeOpenedFolderName', fontColor },
  { 'NvimTreeWinSeparator', { fg = colors.base00, bg = colors.base00 } },
  { 'NvimTreeWindowPicker', { fg = colors.base0F, bg = colors.base02 } },
  { 'NvimTreeCursorLine', { bg = colors.base02 } },
  { 'NvimTreeSpecialFile', { fg = colors.base05 } },
  { 'NvimTreeExecFile', { fg = colors.base05 } },
  { 'NvimTreeRootFolder', { fg = colors.base0F } },

  { 'NvimTreeGitDirty', { fg = colors.base0C } },
  { 'NvimTreeGitStaged', { fg = colors.base0B } },
  { 'NvimTreeGitMerge', { fg = colors.base0F } },
  { 'NvimTreeGitRenamed', { fg = colors.base0C } },
  { 'NvimTreeGitNew', { fg = colors.base08 } },
  { 'NvimTreeGitDeleted', { fg = 'none' } },
  { 'NvimTreeGitIgnored', { fg = colors.base04 } },
}
