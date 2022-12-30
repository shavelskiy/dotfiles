local colors = require 'colors.colors'

return {
  { 'MasonHeader', { bg = colors.base0F, fg = colors.base01 } },
  { 'MasonHighlight', { fg = colors.base0D } },
  { 'MasonHighlightBlock', { fg = colors.base01, bg = colors.base0B } },
  { 'MasonHighlightBlockBold', { link = 'MasonHighlightBlock' } },
  { 'MasonHeaderSecondary', { link = 'MasonHighlightBlock' } },
  { 'MasonMuted', { fg = colors.base04 } },
  { 'MasonMutedBlock', { fg = colors.base04, bg = colors.base02 } },
}
