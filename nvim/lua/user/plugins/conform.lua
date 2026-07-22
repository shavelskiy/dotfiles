return {
  'stevearc/conform.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        go = { 'gofmt' },
        sql = { 'sqlfluff' },
        twig = { 'djlint' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        vue = { 'prettierd' },
        svelte = { 'prettierd' },
        html = { 'prettierd' },
        css = { 'prettierd' },
        scss = { 'prettierd' },
        json = { 'prettierd' },
        yaml = { 'prettierd' },
        markdown = { 'prettierd' },
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
