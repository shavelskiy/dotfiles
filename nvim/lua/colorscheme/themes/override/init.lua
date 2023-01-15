local colors = require('colorscheme.scheme').get_colors()

return {
  { '@field.yaml', { fg = colors.base08 } },
  { '@constant.bash', { fg = colors.base08 } },
  { '@label.json', { fg = colors.base08 } },

  { 'PMenuSel', { fg = colors.base01, bg = colors.base0D } },
}
