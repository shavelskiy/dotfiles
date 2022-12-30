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
(namespace_aliasing_clause (name)) @type
(class_interface_clause
  [(name) (qualified_name)] @type)
(scoped_call_expression
  scope: [(name) (qualified_name)] @type)
(class_constant_access_expression
  . [(name) (qualified_name)] @type
  (name) @constant)
(trait_declaration
  name: (name) @type)
(use_declaration
    (name) @type)

; Functions, methods, constructors

(array_creation_expression "array" @function.builtin)
(list_literal "list" @function.builtin)

(method_declaration
  name: (name) @method)

(function_call_expression
  function: (qualified_name (name)) @function)

(function_call_expression
  (name) @function)

(scoped_call_expression
  name: (name) @function)

(member_call_expression
  name: (name) @method)

(function_definition
  name: (name) @function)

(nullsafe_member_call_expression
    name: (name) @method)

(object_creation_expression
  [(name) (qualified_name)] @constructor)

; Parameters
[
  (simple_parameter)
  (variadic_parameter)
] @parameter

(argument
    (name) @parameter)

; Member

(property_element
  (variable_name) @property)

(member_access_expression
  name: (variable_name (name)) @property)

(member_access_expression
  name: (name) @property)

; Variables

(relative_scope) @variable.builtin

((name) @constant.builtin
 (#vim-match? @constant.builtin "^__[A-Z][A-Z\d_]+__$"))

(const_declaration (const_element (name) @constant))

((name) @variable.builtin
 (#eq? @variable.builtin "this"))

; Namespace
(namespace_definition
  name: (namespace_name) @namespace)

; Attributes
(attribute_list) @attribute

; Conditions ( ? : )
(conditional_expression) @conditional
; Basic tokens

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
; Keywords

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
 "abstract"
 "break"
 "class"
 "clone"
 "const"
 "declare"
 "default"
 "echo"
 "enddeclare"
 "enum"
 "extends"
 "final"
 "global"
 "goto"
 "implements"
 "insteadof"
 "interface"
 "namespace"
 "new"
 "private"
 "protected"
 "public"
 "readonly"
 "static"
 "trait"
 "unset"
 "self"
 "parent"
 "case"
 "else"
 "elseif"
 "endif"
 "endswitch"
 "if"
 "switch"
 "match"
 ] @keyword

[
  "return"
  "yield"
] @keyword.return


[
 "continue"
 "do"
 "endfor"
 "endforeach"
 "endwhile"
 "for"
 "foreach"
 "while"
 ] @repeat

[
 "catch"
 "finally"
 "throw"
 "try"
 ] @exception

[
 "include_once"
 "include"
 "require_once"
 "require"
 "use"
 ] @include

[
 ","
 ";"
 ] @punctuation.delimiter

[
  "?>"
  "("
  ")"
  "{"
  "}"
  "?"
  ":"
  "??"
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

  "->"
  "?->"

  "=>"

  "<"
  "<="
  ">="
  ">"
  "<>"
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
  "]"
  "["
] @punctuation.bracket

(class_declaration
  (name) @class_declaration)

(interface_declaration
  (name) @interface_declaration)

(member_call_expression
  (name) @function_call)

(variable_name) @variable

(class_constant_access_expression
  (relative_scope) @keyword)

(object_creation_expression
  (name) @type)

(scoped_call_expression
  scope: (name) @class_declaration)

(scoped_property_access_expression 
  scope: (name) @class_declaration)

(class_constant_access_expression
  (name) @class_declaration
  (name) @constant)

(class_constant_access_expression
  (relative_scope)
  (name) @constant)

(null) @number

(attribute
  parameters: (arguments
    (argument
      name: (name) @attribute_parameter)))

(class_constant_access_expression
  (name)
  (name) @keyword
    (#eq? @keyword "class"))

(ERROR) @error
