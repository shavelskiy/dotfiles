return {
  'catgoose/nvim-colorizer.lua',
  ft = { 'css', 'scss', 'html', 'javascript', 'typescript', 'tsx', 'vue', 'svelte', 'lua' },
  config = function()
    require('colorizer').setup {
      user_default_options = {
        names = false,
      },
    }
  end,
}
