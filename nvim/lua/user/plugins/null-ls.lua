return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'davidmh/cspell.nvim',
  },
  config = function()
    local cspell = require 'cspell'
    local null_ls = require 'null-ls'

    null_ls.setup {
      default_timeout = 10000,
      sources = {
        cspell.diagnostics,
        cspell.code_actions,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.sqlfluff,
        null_ls.builtins.formatting.djlint.with {
          filetypes = { 'twig' },
          extra_args = { '--indent', '2', '--blank-line-before-tag', 'load,extends,include,block', '--blank-line-after-tag', 'set' },
        },
      },
    }
  end,
}
