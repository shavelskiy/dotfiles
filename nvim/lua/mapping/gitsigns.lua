local gs = package.loaded.gitsigns

return {
  { '<leader>hR', gs.reset_buffer },
  {
    '<leader>hb',
    function() gs.blame_line { full = true } end,
  },
  { '<leader>tb', gs.toggle_current_line_blame },
  { '<leader>td', gs.toggle_deleted },
}
