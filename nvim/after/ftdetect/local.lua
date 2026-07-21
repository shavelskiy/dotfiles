vim.api.nvim_create_augroup('ftdetect_local', { clear = true })

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  group = 'ftdetect_local',
  pattern = '.env.*',
  command = 'setlocal filetype=sh',
})
