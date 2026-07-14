local colors = require 'colorscheme.colors'

return {
  -- menu window
  { 'BlinkCmpMenu', { fg = colors.base06, bg = colors.base01 } },
  { 'BlinkCmpMenuBorder', { fg = colors.base04 } },
  { 'BlinkCmpMenuSelection', { bg = colors.base02 } },
  { 'BlinkCmpScrollBarThumb', { bg = colors.base04 } },
  { 'BlinkCmpScrollBarGutter', { bg = colors.base03 } },

  -- documentation window
  { 'BlinkCmpDoc', { fg = colors.base06, bg = colors.base01 } },
  { 'BlinkCmpDocBorder', { fg = colors.base04, bg = colors.base01 } },
  { 'BlinkCmpDocSeparator', { fg = colors.base04, bg = colors.base01 } },

  -- label / abbr
  { 'BlinkCmpLabel', { fg = colors.base06, bg = colors.base01 } },
  { 'BlinkCmpLabelDeprecated', { fg = colors.base04, strikethrough = true } },
  { 'BlinkCmpLabelMatch', { fg = colors.base0D } },
  { 'BlinkCmpLabelDetail', { fg = colors.base05 } },
  { 'BlinkCmpLabelDescription', { fg = colors.base05 } },
  { 'BlinkCmpSource', { fg = colors.base05 } },

  -- kinds
  { 'BlinkCmpKind', { fg = colors.base06 } },
  { 'BlinkCmpKindKeyword', { fg = colors.base0E } },
  { 'BlinkCmpKindVariable', { fg = colors.base08 } },
  { 'BlinkCmpKindConstant', { fg = colors.base09 } },
  { 'BlinkCmpKindReference', { fg = colors.base08 } },
  { 'BlinkCmpKindValue', { fg = colors.base09 } },
  { 'BlinkCmpKindFunction', { fg = colors.base0D } },
  { 'BlinkCmpKindMethod', { fg = colors.base0D } },
  { 'BlinkCmpKindConstructor', { fg = colors.base0D } },
  { 'BlinkCmpKindClass', { fg = colors.base0A } },
  { 'BlinkCmpKindInterface', { fg = colors.base0A } },
  { 'BlinkCmpKindStruct', { fg = colors.base0A } },
  { 'BlinkCmpKindEvent', { fg = colors.base0A } },
  { 'BlinkCmpKindEnum', { fg = colors.base0A } },
  { 'BlinkCmpKindUnit', { fg = colors.base0A } },
  { 'BlinkCmpKindModule', { fg = colors.base06 } },
  { 'BlinkCmpKindProperty', { fg = colors.base08 } },
  { 'BlinkCmpKindField', { fg = colors.base08 } },
  { 'BlinkCmpKindTypeParameter', { fg = colors.base0A } },
  { 'BlinkCmpKindEnumMember', { fg = colors.base0A } },
  { 'BlinkCmpKindOperator', { fg = colors.base06 } },
  { 'BlinkCmpKindSnippet', { fg = colors.base0F } },
  { 'BlinkCmpKindText', { fg = colors.base0B } },
  { 'BlinkCmpKindFolder', { fg = colors.base07 } },
  { 'BlinkCmpKindFile', { fg = colors.base07 } },
  { 'BlinkCmpKindColor', { fg = colors.base0F } },
}
