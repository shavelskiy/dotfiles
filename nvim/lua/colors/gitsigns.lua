local colors = require 'colors.colors'

return {
  { 'GitSignsDiffAdd', { fg = colors.base0D } },
  { 'GitSignsDiffAdded', { fg = colors.base0B } },
  { 'GitSignsDiffChange', { fg = colors.base04 } },
  { 'GitSignsDiffChangeDelete', { fg = colors.base0F } },
  { 'GitSignsDiffModified', { fg = colors.base08 } },
  { 'GitSignsDiffDelete', { fg = colors.base0F } },
  { 'GitSignsDiffRemoved', { fg = colors.base0F } },

  { 'gitcommitOverflow', { fg = colors.base08 } },
  { 'gitcommitSummary', { fg = colors.base08 } },
  { 'gitcommitComment', { fg = colors.base04 } },
  { 'gitcommitUntracked', { fg = colors.base04 } },
  { 'gitcommitDiscarded', { fg = colors.base04 } },
  { 'gitcommitSelected', { fg = colors.base04 } },
  { 'gitcommitHeader', { fg = colors.base0E } },
  { 'gitcommitSelectedType', { fg = colors.base0D } },
  { 'gitcommitUnmergedType', { fg = colors.base0D } },
  { 'gitcommitDiscardedType', { fg = colors.base0D } },
  { 'gitcommitBranch', { fg = colors.base09, bold = true } },
  { 'gitcommitUntrackedFile', { fg = colors.base0A } },
  { 'gitcommitUnmergedFile', { fg = colors.base08, bold = true } },
  { 'gitcommitDiscardedFile', { fg = colors.base08, bold = true } },
  { 'gitcommitSelectedFile', { fg = colors.base0B, bold = true } },
}
