return {
  'windwp/nvim-ts-autotag',
  ft = { 'html', 'javascript', 'typescript', 'tsx', 'jsx', 'vue', 'svelte', 'xml' },
  config = function()
    require('nvim-ts-autotag').setup {
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
      per_filetype = {
        ['html'] = {
          enable_close = false,
        },
      },
    }
  end,
}
