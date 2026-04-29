return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  branch = 'main',
  init = function() vim.g.no_plugin_maps = true end,
  config = function()
    vim.keymap.set({ 'n', 'x', 'o' }, ']m', function() require('nvim-treesitter-textobjects.move').goto_next_start('@function.outer', 'textobjects') end)
    vim.keymap.set({ 'n', 'x', 'o' }, ']]', function() require('nvim-treesitter-textobjects.move').goto_next_start('@class.outer', 'textobjects') end)
    vim.keymap.set(
      { 'n', 'x', 'o' },
      ']o',
      function() require('nvim-treesitter-textobjects.move').goto_next_start({ '@loop.inner', '@loop.outer' }, 'textobjects') end
    )
    vim.keymap.set({ 'n', 'x', 'o' }, ']s', function() require('nvim-treesitter-textobjects.move').goto_next_start('@local.scope', 'locals') end)
    vim.keymap.set({ 'n', 'x', 'o' }, ']z', function() require('nvim-treesitter-textobjects.move').goto_next_start('@fold', 'folds') end)

    vim.keymap.set({ 'n', 'x', 'o' }, ']M', function() require('nvim-treesitter-textobjects.move').goto_next_end('@function.outer', 'textobjects') end)
    vim.keymap.set({ 'n', 'x', 'o' }, '][', function() require('nvim-treesitter-textobjects.move').goto_next_end('@class.outer', 'textobjects') end)

    vim.keymap.set({ 'n', 'x', 'o' }, '[m', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@function.outer', 'textobjects') end)
    vim.keymap.set({ 'n', 'x', 'o' }, '[[', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@class.outer', 'textobjects') end)

    vim.keymap.set({ 'n', 'x', 'o' }, '[M', function() require('nvim-treesitter-textobjects.move').goto_previous_end('@function.outer', 'textobjects') end)
    vim.keymap.set({ 'n', 'x', 'o' }, '[]', function() require('nvim-treesitter-textobjects.move').goto_previous_end('@class.outer', 'textobjects') end)
  end,
}
