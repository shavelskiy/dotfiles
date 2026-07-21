return {
  'lewis6991/gitsigns.nvim',
  event = 'BufReadPre',
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
          { ']h', function() gs.nav_hunk 'next' end, 'Next hunk' },
          { '[h', function() gs.nav_hunk 'prev' end, 'Prev hunk' },

          { '<leader>hp', gs.preview_hunk_inline, 'Preview hunk' },
          { '<leader>hs', gs.stage_hunk, 'Stage hunk' },
          { '<leader>hr', gs.reset_hunk, 'Reset hunk' },

          { '<leader>hR', gs.reset_buffer, 'Reset buffer' },
          {
            '<leader>hb',
            function() gs.blame_line { full = true } end,
            'Blame line',
          },
          { '<leader>tb', gs.toggle_current_line_blame, 'Toggle line blame' },
          { '<leader>td', gs.toggle_deleted, 'Toggle deleted' },
        }

        for _, map in ipairs(mapping) do
          vim.keymap.set('n', map[1], map[2], { buffer = bufnr, desc = map[3] })
        end

        vim.keymap.set({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { buffer = bufnr, desc = 'Select hunk' })
      end,
    }
  end,
}
