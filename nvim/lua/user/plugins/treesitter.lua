return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local langs = {
      'bash',
      'javascript',
      'typescript',
      'tsx',
      'php',
      'phpdoc',
      'json',
      'yaml',
      'html',
      'css',
      'go',
      'dockerfile',
      'lua',
      'markdown',
      'markdown_inline',
      'make',
      'query',
      'sql',
      'twig',
      'fish',
      'vue',
      'svelte',
      'prisma',
      'proto',
    }

    require('nvim-treesitter').setup {}

    require('nvim-treesitter').install(langs)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = langs,
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldlevel = 99
      end,
    })
  end,
}
