local buffer_parts = require 'tabline.buffer.parts'
local is_buf_valid = require('tabline.api').is_buf_valid

local get_length = function(parts) return parts.force_size == nil and 7 + #parts.name or math.abs(parts.force_size) end

return function(available_space)
  -- collect valid buffers together with their rendered parts and widths
  local parts, widths, n = {}, {}, 0
  local current_buf, current_idx = vim.api.nvim_get_current_buf(), nil

  for _, bufnr in ipairs(vim.t.bufs or {}) do
    if is_buf_valid(bufnr) then
      n = n + 1
      parts[n] = buffer_parts(bufnr)
      widths[n] = get_length(parts[n])
      if bufnr == current_buf then current_idx = n end
    end
  end

  if n == 0 then
    vim.g.tabline_offset = 0
    return {}
  end

  -- total width of the buffers in the inclusive index range [a, b]
  local range_width = function(a, b)
    local w = 0
    for i = a, b do w = w + widths[i] end
    return w
  end

  -- offset = number of buffers hidden past the left edge
  local offset = math.max(0, math.min(vim.g.tabline_offset or 0, n - 1))

  if current_idx then
    -- never let the current buffer scroll off the left edge
    if offset >= current_idx then offset = current_idx - 1 end
    -- scroll right just enough for the current buffer to fully fit
    while offset < current_idx - 1 and range_width(offset + 1, current_idx) > available_space do
      offset = offset + 1
    end
  end

  -- pull hidden buffers back in from the left while trailing space is free
  while offset > 0 and range_width(offset, n) <= available_space do
    offset = offset - 1
  end

  vim.g.tabline_offset = offset

  -- build the visible slice, truncating the last buffer if it overflows the edge
  local result, used = {}, 0
  for i = offset + 1, n do
    if used + widths[i] > available_space then
      parts[i].force_size = available_space - used
      if parts[i].force_size > 0 then table.insert(result, parts[i]) end
      break
    end

    table.insert(result, parts[i])
    used = used + widths[i]
  end

  return result
end
