local colors = require 'colors.colors'

return {
  { '@comment', { fg = colors.base04 } }, -- line and block comments
  { '@error', { fg = colors.base08 } }, -- syntax/parser errors
  { '@none', { fg = colors.base05 } }, -- completely disable the highlight
  { '@preproc', { fg = colors.base0A } }, -- various preprocessor directives & shebangs
  { '@define', { fg = colors.base0E } }, -- preprocessor definition directives
  { '@operator', { fg = colors.base0C } }, -- symbolic operators (e.g. `+` / `*`)

  { '@punctuation.delimiter', { fg = colors.base0C } }, -- delimiters (e.g. `;` / `.` / `,`)
  { '@punctuation.bracket', { fg = colors.base0C } }, -- brackets (e.g. `()` / `{}` / `[]`)
  { '@punctuation.special', { fg = colors.base08 } }, -- special symbols (e.g. `{}` in string interpolation)

  { '@string', { fg = colors.base0B } }, -- string literals
  { '@string.regex', { fg = colors.base0C } }, -- regular expressions
  { '@string.escape', { fg = colors.base0C } }, -- escape sequences
  { '@string.special', { fg = colors.base0C } }, -- other special strings (e.g. dates)

  { '@character', { fg = colors.base08 } }, -- character literals
  { '@character.special', { fg = colors.base0F } }, -- special characters (e.g. wildcards)

  { '@boolean', { fg = colors.base08 } }, -- boolean literals
  { '@number', { fg = colors.base08 } }, -- numeric literals
  { '@float', { fg = colors.base08 } }, -- floating-point number literals

  { '@function', { fg = colors.base0D } }, -- function definitions
  { '@function.builtin', { fg = colors.base0D } }, -- built-in functions
  { '@function.call', { fg = colors.base0D } }, -- function calls
  { '@function.macro', { fg = colors.base08 } }, -- preprocessor macros

  { '@method', { fg = colors.base0D } }, -- method definitions
  { '@method.call', { fg = colors.base0D } }, -- method calls

  { '@constructor', { fg = colors.base07 } }, -- constructor calls and definitions
  { '@parameter', { fg = colors.base08 } }, -- parameters of a function

  { '@keyword', { fg = colors.base0E } }, -- various keywords
  { '@keyword.function', { fg = colors.base0E, italic = true } }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
  { '@keyword.operator', { fg = colors.base0E, italic = true } }, -- operators that are English words (e.g. `and` / `or`)
  { '@keyword.return', { fg = colors.base0E, italic = true } }, -- keywords like `return` and `yield`

  { '@conditional', { fg = colors.base0E } }, -- keywords related to conditionals (e.g. `if` / `else`)
  { '@conditional.ternary', { fg = colors.base0C } }, -- Ternary operator: condition ? 1 : 2
  { '@repeat', { fg = colors.base0E } }, -- keywords related to loops (e.g. `for` / `while`)
  { '@debug', { fg = colors.base08 } }, -- keywords related to debugging
  { '@label', { fg = colors.base08 } }, -- GOTO and other labels (e.g. `label:` in C)
  { '@include', { fg = colors.base0E } }, -- keywords for including modules (e.g. `import` / `from` in Python)
  { '@exception', { fg = colors.base08, italic = true } }, -- keywords related to exceptions (e.g. `throw` / `catch`)

  { '@type', { fg = colors.base07 } }, -- type or class definitions and annotations
  { '@type.builtin', { fg = colors.base0E, italic = true } }, -- built-in types
  { '@type.definition', { fg = colors.base07 } }, -- type definitions (e.g. `typedef` in C)
  { '@type.qualifier', { fg = colors.base0E, italic = true } }, -- type qualifiers (e.g. `const`)

  { '@storageclass', { fg = colors.base0A } }, -- visibility/life-time modifiers
  { '@attribute', { fg = colors.base0A } }, -- attribute annotations (e.g. Python decorators)
  { '@field', { fg = colors.base0D } }, -- object and struct fields
  { '@property', { fg = colors.base07 } }, -- similar to `@field`

  { '@variable', { fg = colors.base05 } }, -- various variable names
  { '@variable.builtin', { fg = colors.base05 } }, -- built-in variable names (e.g. `this`)

  { '@constant', { fg = colors.base08 } }, -- constant identifiers
  { '@constant.builtin', { fg = colors.base08 } }, -- built-in constant values
  { '@constant.macro', { fg = colors.base08 } }, -- constants defined by the preprocessor

  { '@namespace', { fg = colors.base07 } }, -- modules or namespaces
  { '@symbol', { fg = colors.base0B } }, -- symbols or atoms

  { '@text', { fg = colors.base05 } }, -- non-structured text
  { '@text.strong', { bold = true } }, -- bold text
  { '@text.emphasis', { fg = colors.base09 } }, -- text with emphasis
  { '@text.underline', { fg = colors.base05, underline = true } }, -- underlined text
  { '@text.strike', { fg = colors.base01, strikethrough = true } }, -- strikethrough text
  { '@text.title', { fg = colors.base09 } }, -- text that is part of a title
  { '@text.literal', { fg = colors.base09 } }, -- literal or verbatim text
  { '@text.uri', { fg = colors.base0B, underline = true } }, -- URIs (e.g. hyperlinks)
  { '@text.math', { fg = colors.base09 } }, -- math environments (e.g. `$ ... $` in LaTeX)
  { '@text.environment', { fg = colors.base09 } }, -- text environments of markup languages
  { '@text.environment.name', { fg = colors.base09 } }, -- text indicating the type of an environment
  { '@text.reference', { fg = colors.base09 } }, -- text references, footnotes, citations, etc.

  { '@text.todo', { fg = colors.base09 } }, -- todo notes
  { '@text.note', { fg = colors.base09 } }, -- info notes
  { '@text.warning', { fg = colors.base09 } }, -- warning notes
  { '@text.danger', { fg = colors.base09 } }, -- danger/error notes

  { '@text.diff.add', { fg = colors.base09 } }, -- added text (for diff files)
  { '@text.diff.delete', { fg = colors.base09 } }, -- deleted text (for diff files)

  { '@tag', { fg = colors.base08 } }, -- XML tag names
  { '@tag.attribute', { fg = colors.base09 } }, -- XML tag attributes
  { '@tag.delimiter', { fg = colors.base0A } }, -- XML tag delimiters

  { '@conceal', { bg = 'none' } }, -- for captures that are only used for concealing

  -- { '@spell', { underline = true } }, -- for defining regions to be spellchecked
  -- { '@nospell', { underline = false } }, -- for defining regions that should NOT be spellchecked

  { '@definition', { sp = colors.base04, underline = true } }, -- various definitions
  { '@definition.constant', { sp = colors.base04, underline = true } }, -- constants
  { '@definition.function', { sp = colors.base04, underline = true } }, -- functions
  { '@definition.method', { sp = colors.base04, underline = true } }, -- methods
  { '@definition.var', { sp = colors.base04, underline = true } }, -- variables
  { '@definition.parameter', { sp = colors.base04, underline = true } }, -- parameters
  { '@definition.macro', { sp = colors.base04, underline = true } }, -- preprocessor macros
  { '@definition.type', { sp = colors.base04, underline = true } }, -- types or classes
  { '@definition.field', { sp = colors.base04, underline = true } }, -- fields or properties
  { '@definition.enum', { sp = colors.base04, underline = true } }, -- enumerations
  { '@definition.namespace', { sp = colors.base04, underline = true } }, -- modules or namespaces
  { '@definition.import', { sp = colors.base04, underline = true } }, -- imported names
  { '@definition.associated', { sp = colors.base04, underline = true } }, -- the associated type of a variable

  { '@class_declaration', { fg = colors.base0B } },
  { '@interface_declaration', { fg = colors.base0D } },
  { '@function_call', { fg = colors.base0B } },
  { '@attribute_parameter', { fg = colors.base0D } },

  -- yaml
  { '@field.yaml', { fg = colors.base08 } },

  -- php
  { '@attribute.php', { fg = colors.base0D } },
  { '@string.php', { fg = colors.base0A } },
  { '@variable.php', { fg = colors.base0C } },
  { '@variable.builtin.php', { fg = colors.base0C } },
  { '@variable.php', { fg = colors.base0C } },
  { '@exception.php', { fg = colors.base0E } },
  { '@error.php', { fg = colors.base05 } },

  -- twig
  { '@tag.twig', { fg = colors.base0E } },
  { '@tag.delimiter.twig', { fg = colors.base07 } },
  { '@string.twig', { fg = colors.base0A } },
  { '@variable.twig', { fg = colors.base07 } },
  { '@attribute.twig', { fg = colors.base07 } },

  -- xml
  { 'xmlTag', { fg = colors.base0A } },
  { 'xmlTagName', { fg = colors.base08 } },
  { 'xmlAttrib', { fg = colors.base08 } },
  { 'xmlString', { fg = colors.base0B } },

  -- makrdown
  { '@punctuation.special.markdown', { fg = colors.base04 } },

  -- tsx
  -- { '@tag.tsx', { fg = colors.base0C } },
  -- { '@tag.delimiter.tsx', { fg = colors.base0C } },
  -- { '@tag.attribute.tsx', { fg = colors.base0C } },
}
