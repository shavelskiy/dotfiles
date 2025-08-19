; ; Keywords
[
  "and"
  "as"
  "instanceof"
  "or"
  "xor"
] @keyword.operator

[
  "fn"
  "function"
] @keyword.function

[
  (php_tag)
  (php_end_tag)
  "clone"
  "declare"
  "default"
  "echo"
  "enddeclare"
  "extends"
  "global"
  "goto"
  "implements"
  "insteadof"
  "print"
  "new"
  "unset"
  "parent"
  "self"
] @keyword

[
  "enum"
  "class"
  "interface"
  "namespace"
  "trait"
] @keyword.type

[
  "abstract"
  "const"
  "final"
  "private"
  "protected"
  "public"
  "readonly"
  "static"
] @keyword.modifier


[
  "return"
  "exit"
  "yield"
  "yield from"
] @keyword.return

[
  "case"
  "else"
  "elseif"
  "endif"
  "endswitch"
  "if"
  "switch"
  "match"
  "??"
] @keyword.conditional

[
  "break"
  "continue"
  "do"
  "endfor"
  "endforeach"
  "endwhile"
  "for"
  "foreach"
  "while"
] @keyword.repeat

[
  "catch"
  "finally"
  "throw"
  "try"
] @keyword.exception

[
  "include_once"
  "include"
  "require_once"
  "require"
  "use"
] @keyword.import

[
  ","
  ";"
  ":"
  "\\"
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  "="
  "."
  "-"
  "*"
  "/"
  "+"
  "%"
  "**"
  "~"
  "|"
  "^"
  "&"
  "<<"
  ">>"
  "<<<"
  "->"
  "?->"
  "=>"
  "<"
  "<="
  ">="
  ">"
  "<>"
  "<=>"
  "=="
  "!="
  "==="
  "!=="
  "!"
  "&&"
  "||"
  ".="
  "-="
  "+="
  "*="
  "/="
  "%="
  "**="
  "&="
  "|="
  "^="
  "<<="
  ">>="
  "??="
  "--"
  "++"
  "@"
  "::"
] @operator

[
 (primitive_type)
 (cast_type)
 ] @type.builtin
(named_type (name)) @type
(named_type (qualified_name)) @type
(class_declaration
  name: (name) @type)
(base_clause
  [(name) (qualified_name)] @type)
(enum_declaration
  name: (name) @type)
(interface_declaration
  name: (name) @type)
(namespace_use_clause
  [(name) (qualified_name)] @type)
(class_interface_clause
  [(name) (qualified_name)] @type)
(class_constant_access_expression
  . [(name) (qualified_name)] @type
  (name) @constant)
(trait_declaration
  name: (name) @type)
(use_declaration
    (name) @type)

(object_creation_expression
  (name) @type)

(variable_name) @variable

(class_constant_access_expression
  (relative_scope)
  (name) @constant)
(class_constant_access_expression
  (name)
  (name) @keyword
    (#eq? @keyword "class"))

(array_creation_expression "array" @function.builtin)
(list_literal "list" @function.builtin)

(method_declaration
  name: (name) @method)

(scoped_call_expression
  name: (name) @function.call)
(scoped_call_expression
  scope: [(name) (qualified_name)] @type)

(function_call_expression
  (name) @function.call)

(member_call_expression
  name: (name) @function.call)

(function_definition
  name: (name) @function)

(nullsafe_member_call_expression
    name: (name) @method.call)

(object_creation_expression
  [(name) (qualified_name)] @constructor)

[
  (simple_parameter)
  (variadic_parameter)
] @parameter

(argument
    (name) @parameter)

(property_element
  (variable_name) @property)

(member_access_expression
  name: (name) @property)

(relative_scope) @variable.builtin

((name) @constant.builtin
 (#vim-match? @constant.builtin "^__[A-Z][A-Z\d_]+__$"))

(const_declaration (const_element (name) @constant))

(namespace_definition
  name: (namespace_name) @namespace)

(attribute_list) @attribute

(conditional_expression) @conditional

[
 (string)
 (encapsed_string)
 (heredoc)
 (shell_command_expression) ; backtick operator: `ls -la`
 ] @string

(boolean) @boolean
(null) @constant.builtin
(integer) @number
(float) @float
(comment) @comment

(named_label_statement) @label

(ERROR) @error
