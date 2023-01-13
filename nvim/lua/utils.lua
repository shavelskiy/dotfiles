return {
  finder = function(exec)
    local lib = require 'nvim-tree.lib'
    if vim.bo[vim.api.nvim_win_get_buf(0)].ft ~= 'NvimTree' then
      exec()
      return
    end

    local node = lib.get_node_at_cursor()
    if not node then return end
    exec { search_dirs = { node.open == nil and node.parent.absolute_path or node.absolute_path } }
  end,
  mapping = function(name)
    for _, map in pairs(require('keymaps.' .. name)) do
      vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], { noremap = true, silent = true })
    end
  end,
}
