local colors = require 'colors.colors'

return {
  -- nvim cmp
  { 'CmpItemAbbr', { fg = colors.base05 } },
  { 'CmpItemAbbrMatch', { fg = colors.base0D, bold = true } },
  { 'CmpBorder', { fg = colors.base03 } },
  { 'CmPmenu', { bg = colors.base00 } },

  -- cmp item kinds
  { 'CmpItemKindConstant', { fg = colors.base09 } },
  { 'CmpItemKindFunction', { fg = colors.base0D } },
  { 'CmpItemKindIdentifier', { fg = colors.base08 } },
  { 'CmpItemKindField', { fg = colors.base08 } },
  { 'CmpItemKindVariable', { fg = colors.base0E } },
  { 'CmpItemKindSnippet', { fg = colors.base0F } },
  { 'CmpItemKindText', { fg = colors.base0B } },
  { 'CmpItemKindStructure', { fg = colors.base0E } },
  { 'CmpItemKindType', { fg = colors.base0A } },
  { 'CmpItemKindKeyword', { fg = colors.base07 } },
  { 'CmpItemKindMethod', { fg = colors.base0D } },
  { 'CmpItemKindConstructor', { fg = colors.base0D } },
  { 'CmpItemKindFolder', { fg = colors.base07 } },
  { 'CmpItemKindModule', { fg = colors.base0A } },
  { 'CmpItemKindProperty', { fg = colors.base08 } },
  { 'CmpItemKindUnit', { fg = colors.base0E } },
  { 'CmpItemKindFil', { fg = colors.base07 } },
  { 'CmpItemKindColo', { fg = colors.base0F } },
  { 'CmpItemKindReferenc', { fg = colors.base05 } },
  { 'CmpItemKindStruc', { fg = colors.base0E } },
  { 'CmpItemKindOperato', { fg = colors.base05 } },
  { 'CmpItemKindTypeParamete', { fg = colors.base08 } },
}
