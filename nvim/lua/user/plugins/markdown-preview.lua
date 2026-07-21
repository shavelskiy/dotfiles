return {
  'iamcco/markdown-preview.nvim',
  build = function() vim.fn['mkdp#util#install']() end,
  ft = 'markdown',
  keys = {
    { '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', desc = 'Markdown preview' },
  },
}
