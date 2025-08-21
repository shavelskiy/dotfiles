local colors = require 'colorscheme.colors'

return {
  { '@property.yaml', { fg = colors.base08 } },
  { '@constant.bash', { fg = colors.base08 } },
  { '@property.json', { fg = colors.base08 } },
  { '@tag.twig', { fg = colors.base0E } },

  { '@string.php', { fg = colors.base0A } },
  { '@variable.php', { fg = colors.base0C } },
  { '@conditional.php', { fg = colors.base0C } },
  { '@type.builtin.php', { fg = colors.base0E } },
  { '@namespace.php', { fg = colors.base07 } },
  { '@method.call.php', { fg = colors.base0B } },
  { '@function.call.php', { fg = colors.base0B } },
  { '@parameter.php', { fg = colors.base0D } },

  { '@type.go', { fg = colors.base0A } },
}
