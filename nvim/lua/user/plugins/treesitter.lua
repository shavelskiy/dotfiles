return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {}

    local langs = {
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
      'proto',
    }

    require('nvim-treesitter').install(langs)

    table.insert(langs, 'typescriptreact')

    vim.api.nvim_create_autocmd('FileType', {
      pattern = langs,
      callback = function()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.treesitter.start()
      end,
    })
  end,
}
