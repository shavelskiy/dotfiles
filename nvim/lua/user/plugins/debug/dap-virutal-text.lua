require('nvim-dap-virtual-text').setup {
  enabled = true,
  enabled_commands = true,
  highlight_changed_variables = true,
  highlight_new_as_changed = false,
  show_stop_reason = true,
  commented = true,
  only_first_definition = true,
  all_references = false,
  filter_references_pattern = '<module',
  -- experimental features:
  virt_text_pos = 'eol',
  all_frames = true,
  virt_lines = false,
  virt_text_win_col = nil,
}
