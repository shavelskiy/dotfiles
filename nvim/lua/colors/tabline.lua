local colors = require 'colors.colors'

return {
  { 'TablineFill', { bg = colors.base02 } },
  { 'TablineBufOn', { fg = colors.base07, bg = colors.base01 } },
  { 'TablineBufOff', { fg = colors.base04, bg = colors.base02 } },
  { 'TablineBufOnModified', { fg = colors.base08, bg = colors.base01 } },
  { 'TablineBufOffModified', { fg = colors.base08, bg = colors.base02 } },

  { 'TablinePick', { fg = colors.base08, bg = colors.base02 } },

  { 'TablineTabOn', { fg = colors.base01, bg = colors.base05, bold = true } },
  { 'TablineTabOff', { fg = colors.base05, bg = colors.base03 } },
}
