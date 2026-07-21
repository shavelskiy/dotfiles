vim.api.nvim_create_augroup('ftdetect_json', { clear = true })

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  group = 'ftdetect_json',
  pattern = '*.json',
  command = 'setlocal filetype=json',
})

vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  group = 'ftdetect_json',
  pattern = 'composer.lock',
  command = 'setlocal filetype=json',
})
