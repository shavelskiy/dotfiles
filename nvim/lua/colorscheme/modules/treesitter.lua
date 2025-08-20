local colors = require 'colorscheme.colors'

return {
  -- Identifiers
  { '@variable', { fg = colors.base08 } },
  { '@variable.builtin', { fg = colors.base09 } },
  { '@variable.parameter', { fg = colors.base08 } },
  { '@variable.parameter.builtin', { fg = colors.base08 } },
  { '@variable.member', { fg = colors.base08 } },

  { '@constant', { fg = colors.base08 } },
  { '@constant.builtin', { fg = colors.base08 } },
  { '@constant.macro', { fg = colors.base08 } },

  { '@module', { fg = colors.base07 } },
  { '@module.builtin', { fg = colors.base08 } },
  { '@label', { fg = colors.base0A } },

  -- Literals
  { '@string', { fg = colors.base0B } },
  { '@string.documentation', { fg = colors.base0B } },
  { '@string.regex', { fg = colors.base0C } },
  { '@string.escape', { fg = colors.base0C } },
  { '@string.special', { fg = colors.base0F } },
  { '@string.special.symbol', { fg = colors.base0F } },
  { '@string.special.url', { fg = colors.base0F } },
  { '@string.special.path', { fg = colors.base0F } },

  { '@character', { fg = colors.base08 } },
  { '@character.special', { fg = colors.base0F } },

  { '@boolean', { fg = colors.base09 } },
  { '@number', { fg = colors.base08 } },
  { '@number.float', { fg = colors.base09 } },

  -- Types
  { '@type', { fg = colors.base07 } },
  { '@type.builtin', { fg = colors.base0A, italic = true } },
  { '@type.definition', { fg = colors.base0A } },

  { '@attribute', { fg = colors.base0D } },
  { '@attribute.builtin', { fg = colors.base0A } },
  { '@property', { fg = colors.base07 } },

  -- Functions
  { '@function', { fg = colors.base0D } },
  { '@function.builtin', { fg = colors.base0D } },
  { '@function.call', { fg = colors.base0D } },
  { '@function.macro', { fg = colors.base08 } },

  { '@function.method', { fg = colors.base0D } },
  { '@function.method.call', { fg = colors.base0D } },

  { '@method', { fg = colors.base0D } },
  { '@method.call', { fg = colors.base0D } },

  { '@constructor', { fg = colors.base0C } },
  { '@operator', { fg = colors.base0C } },

  -- Keywords
  { '@keyword', { fg = colors.base0E } },
  { '@keyword.coroutine', { fg = colors.base0E } },
  { '@keyword.function', { fg = colors.base0E } },
  { '@keyword.operator', { fg = colors.base0E } },
  { '@keyword.import', { link = 'Include' } },
  { '@keyword.type', { fg = colors.base0E } },
  { '@keyword.modifier', { fg = colors.base0E } },
  { '@keyword.repeat', { fg = colors.base0E } },
  { '@keyword.return', { fg = colors.base0E } },
  { '@keyword.debug', { fg = colors.base0E } },
  { '@keyword.exception', { fg = colors.base0E } },

  { '@keyword.conditional', { fg = colors.base0E } },
  { '@keyword.conditional.ternary', { fg = colors.base0E } },

  { '@keyword.directive', { fg = colors.base0E } },
  { '@keyword.directive.define', { fg = colors.base0E } },

  -- Punctuation
  { '@punctuation.delimiter', { fg = colors.base0C } },
  { '@punctuation.bracket', { fg = colors.base0C } },
  { '@punctuation.special', { fg = colors.base0C } },

  -- Comments
  { '@comment', { fg = colors.base04, italic = true } },

  -- Markup
  { '@markup.heading', { fg = colors.base0D } },
  { '@markup.raw', { fg = colors.base09 } },
  { '@markup.link', { fg = colors.base08 } },
  { '@markup.link.url', { fg = colors.base09, underline = true } },
  { '@markup.link.label', { fg = colors.base0C } },
  { '@markup.list', { fg = colors.base08 } },
  { '@markup.strong', { bold = true } },
  { '@markup.underline', { underline = true } },
  { '@markup.italic', { italic = true } },
  { '@markup.strikethrough', { strikethrough = true } },

  { '@tag', { fg = colors.base0C } },
  { '@tag.builtin', { fg = colors.base0C } },
  { '@tag.attribute', { fg = colors.base0A } },
  { '@tag.delimiter', { fg = colors.base0C } },
}
