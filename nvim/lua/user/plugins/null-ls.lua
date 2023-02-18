return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettier.with { filetypes = { 'xml', 'html', 'yaml', 'twig', 'json', 'markdown' } },
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.twigcs,
        null_ls.builtins.diagnostics.jsonlint,
      },
    }
  end,
}
