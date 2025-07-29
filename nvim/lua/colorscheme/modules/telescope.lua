local colors = require 'colorscheme.colors'

return {
  { 'TelescopeBorder', { fg = colors.base00, bg = colors.base00 } },
  { 'TelescopePromptBorder', { fg = colors.base02, bg = colors.base02 } },
  { 'TelescopePromptNormal', { fg = colors.base06, bg = colors.base02 } },
  { 'TelescopePromptPrefix', { fg = colors.base08, bg = colors.base02 } },
  { 'TelescopeNormal', { bg = colors.base00 } },
  { 'TelescopePreviewTitle', { fg = colors.base02, bg = colors.base0B } },
  { 'TelescopePromptTitle', { fg = colors.base02, bg = colors.base08 } },
  { 'TelescopeResultsTitle', { fg = colors.base00, bg = colors.base00 } },
  { 'TelescopeSelection', { bg = colors.base03 } },
  { 'TelescopePreviewLine', { bg = colors.base03 } },

  { 'TelescopeResultsDiffAdd', { fg = colors.base0B } },
  { 'TelescopeResultsDiffChange', { fg = colors.base0A } },
  { 'TelescopeResultsDiffDelete', { fg = colors.base08 } },
}
