local colors = require 'colorscheme.colors'

return {
  { 'TelescopeBorder', { fg = colors.darkerbg, bg = colors.darkerbg } },
  { 'TelescopePromptBorder', { fg = colors.base01, bg = colors.base01 } },
  { 'TelescopePromptNormal', { fg = colors.base05, bg = colors.base01 } },
  { 'TelescopePromptPrefix', { fg = colors.base08, bg = colors.base01 } },
  { 'TelescopeNormal', { bg = colors.darkerbg } },
  { 'TelescopePreviewTitle', { fg = colors.base01, bg = colors.base0B } },
  { 'TelescopePromptTitle', { fg = colors.base01, bg = colors.base08 } },
  { 'TelescopeResultsTitle', { fg = colors.darkerbg, bg = colors.darkerbg } },
  { 'TelescopeSelection', { bg = colors.base02 } },
  { 'TelescopePreviewLine', { bg = colors.base02 } },

  { 'TelescopeResultsDiffAdd', { fg = colors.base0B } },
  { 'TelescopeResultsDiffChange', { fg = colors.base0A } },
  { 'TelescopeResultsDiffDelete', { fg = colors.base08 } },
}
