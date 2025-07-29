local colors = require 'colorscheme.colors'

return {
  { 'MasonHeader', { bg = colors.base0F, fg = colors.base02 } },
  { 'MasonHighlight', { fg = colors.base0D } },
  { 'MasonHighlightBlock', { fg = colors.base02, bg = colors.base0B } },
  { 'MasonHighlightBlockBold', { link = 'MasonHighlightBlock' } },
  { 'MasonHeaderSecondary', { link = 'MasonHighlightBlock' } },
  { 'MasonMuted', { fg = colors.base05 } },
  { 'MasonMutedBlock', { fg = colors.base05, bg = colors.base03 } },
}
