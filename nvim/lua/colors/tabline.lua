local colors = require 'colors.colors'

return {
  { 'BufferCurrent', { bg = colors.base01, fg = colors.base07 } },
  { 'BufferCurrentMod', { bg = colors.base01, fg = colors.base08 } },
  { 'BufferInactive', { bg = colors.base02, fg = colors.base04 } },
  { 'BufferInactiveMod', { bg = colors.base02, fg = colors.base08 } },

  { 'BufferOffset', { bg = colors.base00, fg = colors.base08 } },

  { 'BufferTabpageFill', { bg = colors.base02, fg = colors.base00 } },
  { 'BufferTabpages', { bg = colors.base02, fg = colors.base0C, bold = true } },

  { 'BufferTabOn', { fg = colors.base01, bg = colors.base05, bold = true } },
  { 'BufferTabOff', { fg = colors.base05, bg = colors.base03 } },
}
