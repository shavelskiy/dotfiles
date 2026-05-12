return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
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
      end,
    })
  end,
}
