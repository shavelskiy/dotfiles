return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {},
  init = function()
    vim.o.sessionoptions = 'buffers,curdir,folds,globals,help,tabpages,winsize'

    local group = vim.api.nvim_create_augroup('user_persistence', { clear = true })

    vim.api.nvim_create_autocmd('VimEnter', {
      group = group,
      nested = true,
      callback = function()
        if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
          require('persistence').load()
        end
      end,
    })

    vim.api.nvim_create_autocmd('User', {
      group = group,
      pattern = 'PersistenceSavePre',
      callback = function()
        pcall(function() require('nvim-tree.api').tree.close() end)
      end,
    })

    vim.api.nvim_create_autocmd('User', {
      group = group,
      pattern = 'PersistenceLoadPost',
      callback = function()
        pcall(function() require('nvim-tree.api').tree.open() end)
      end,
    })
  end,
}
