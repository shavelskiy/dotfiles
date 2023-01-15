local colors = require('colorscheme.scheme').get_colors()

return {
  { 'TablineFill', { bg = colors.base01 } },
  { 'TablineBufOn', { fg = colors.base07, bg = colors.base00 } },
  { 'TablineBufOff', { fg = colors.base04, bg = colors.base01 } },
  { 'TablineBufOnModified', { fg = colors.base08, bg = colors.base00 } },
  { 'TablineBufOffModified', { fg = colors.base08, bg = colors.base01 } },

  { 'TablinePick', { fg = colors.base08, bg = colors.base01 } },

  { 'TablineTabOn', { fg = colors.base00, bg = colors.base05, bold = true } },
  { 'TablineTabOff', { fg = colors.base05, bg = colors.base03 } },
}
