return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        go = { 'gofmt' },
        sql = { 'sqlfluff' },
        twig = { 'djlint' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        vue = { 'prettier' },
        svelte = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },
        scss = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
      },
      formatters = {
        djlint = {
          args = {
            '--reformat',
            '--indent',
            '2',
            '--blank-line-before-tag',
            'load,extends,include,block',
            '--blank-line-after-tag',
            'set',
            '-',
          },
        },
      },
      default_format_opts = {
        lsp_format = 'fallback',
        timeout_ms = 10000,
      },
    }
  end,
  keys = {
    {
      '<space>f',
      function() require('conform').format { async = false, lsp_format = 'fallback' } end,
      mode = { 'n', 'v' },
    },
  },
}
