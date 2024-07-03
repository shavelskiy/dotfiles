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
        cspell.diagnostics.with { config = config },
        cspell.code_actions.with { config = config },
        null_ls.builtins.formatting.prettier.with {
          filetypes = {
            'xml',
            'html',
            'yaml',
            'json',
            'jsonc',
            'markdown',
            'javascript',
            'typescript',
            'typescriptreact',
            'css',
            'scss',
            'sass',
          },
        },
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.djlint.with {
          filetypes = { 'twig' },
          extra_args = {'--indent', '2', '--blank-line-before-tag', 'load,extends,include,block', '--blank-line-after-tag', 'set'},
        },
        -- null_ls.builtins.diagnostics.jsonlint,
      },
    }
  end,
}
