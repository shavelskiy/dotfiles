return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  commit = '24ddf60',
  config = function()

    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
        'bash',
        'tsx',
        'javascript',
        'typescript',
        'php',
        'phpdoc',
        'json',
        'yaml',
        'html',
        'css',
        'go',
        'dockerfile',
        'vim',
        'lua',
        'markdown',
        'make',
        'query',
        'sql',
        'twig',
        'fish',
        'vue',
        'svelte',
        'prisma',
      },
    }
  end,
}
