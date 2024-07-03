return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      signs = {
        add = { text = '│' },
        change = { text = '│' },
        delete = { text = '│' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '│' },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local mapping = {
          { '<leader>hR', gs.reset_buffer },
          {
            '<leader>hb',
            function() gs.blame_line { full = true } end,
          },
          { '<leader>tb', gs.toggle_current_line_blame },
          { '<leader>td', gs.toggle_deleted },
        }

        for _, map in pairs(mapping) do
          vim.keymap.set('n', map[1], map[2], { buffer = bufnr })
        end
      end,
    }
  end,
}
