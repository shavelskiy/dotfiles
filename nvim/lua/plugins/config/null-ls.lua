local null_ls = require 'null-ls'

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.djlint.with { filetypes = { 'twig' } },
    null_ls.builtins.diagnostics.twigcs,
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.diagnostics.tidy,
  },
}
