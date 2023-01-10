local M = {}

M.mapping = function(name)
  for _, map in pairs(require('mapping.' .. name)) do
    vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], { noremap = true, silent = true })
  end
end

return M
