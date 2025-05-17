return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  commit = '24ddf60',
  config = function()
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
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
        'prisma',
        'proto',
      },
      disable = function(_, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then return true end
      end,
    }
  end,
}
