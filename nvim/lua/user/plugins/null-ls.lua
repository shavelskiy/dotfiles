return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'xml', 'html', 'yaml', 'twig', 'json', 'jsonc', 'markdown', 'javascript', 'typescript', 'typescriptreact', 'css', 'scss' },
        },
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.diagnostics.twigcs,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.sqlfluff.with {
          extra_args = { '--dialect', 'postgres' },
        },
        null_ls.builtins.formatting.sqlfluff.with {
          extra_args = { '--dialect', 'postgres' },
        },
      },
    }
  end,
}
