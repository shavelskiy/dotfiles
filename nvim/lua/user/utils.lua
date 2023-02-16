return {
  finder = function(exec)
    if vim.bo[vim.api.nvim_win_get_buf(0)].ft ~= 'NvimTree' then
      exec()
    else
      local node = require('nvim-tree.lib').get_node_at_cursor()
      if not node then return end
      exec { search_dirs = { node.open == nil and node.parent.absolute_path or node.absolute_path } }
    end
  end,
  mapping = function(name)
    for _, map in pairs(require('user.keymaps.' .. name)) do
      vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], { noremap = true, silent = true })
    end
  end,
}
