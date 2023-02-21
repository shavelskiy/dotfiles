local colors = require('colorscheme.scheme').get_colors()

return {
  { 'PMenuSel', { fg = colors.base01, bg = colors.base0D } },

  { '@field.yaml', { fg = colors.base08 } },
  { '@constant.bash', { fg = colors.base08 } },
  { '@label.json', { fg = colors.base08 } },

  { '@punctuation.delimiter', { fg = colors.base0C } },

  { '@tag.twig', { fg = colors.base0E } },

  { '@tag.html', { fg = colors.base0D } },
  { '@tag.delimiter.html', { fg = colors.base0D } },

  -- php
  { '@string.php', { fg = colors.base0A } },
  { '@property.php', { fg = colors.base07 } },
  { '@variable.php', { fg = colors.base0C } },
  { '@function.php', { fg = colors.base0B } },
  { '@type.php', { fg = colors.base07 } },
  { '@constructor.php', { fg = colors.base07 } },
  { '@constant.php', { fg = colors.base08 } },
  { '@constant.builtin.php', { fg = colors.base08 } },
  { '@number.php', { fg = colors.base08 } },
  { '@boolean.php', { fg = colors.base08 } },
  { '@type.builtin.php', { fg = colors.base0E } },
  { '@include.php', { fg = colors.base0E } },
  { '@namespace.php', { fg = colors.base07 } },
  { '@function.call.php', { fg = colors.base0B } },
  { '@variable.builtin.php', { fg = colors.base0C } },
  { '@exception.php', { fg = colors.base0E } },
  { '@operator.php', { fg = colors.base0C } },
  { '@punctuation.delimiter.php', { fg = colors.base0C } },
  { '@punctuation.bracket.php', { fg = colors.base0C } },
  { '@error.php', { fg = colors.base05 } },
  { '@parameter.php', { fg = colors.base0D } },
  { '@attribute.php', { fg = colors.base0D } },
  { '@type.phpdoc', { fg = colors.base07 } },
}
