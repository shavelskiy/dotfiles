local colors = require 'colors.colors'

return {
  { 'TblineFill', { bg = colors.base02 } },
  { 'TbLineBufOn', { fg = colors.base07, bg = colors.base01 } },
  { 'TbLineBufOff', { fg = colors.base04, bg = colors.base02 } },
  { 'TbLineBufOnModified', { fg = colors.base08 } },
  { 'TbLineBufOffModified', { fg = colors.base08, bg = colors.base02 } },
  { 'TbLineBufOnClose', { fg = colors.base07, bg = colors.base01 } },
  { 'TbLineBufOffClose', { fg = colors.base04, bg = colors.base02 } },

  { 'TbLineTabOn', { fg = colors.base01, bg = colors.base05, bold = true } },
  { 'TbLineTabOff', { fg = colors.base05, bg = colors.base03 } },
}
