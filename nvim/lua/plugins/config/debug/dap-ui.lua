require('dapui').setup {
  icons = { expanded = '▾', collapsed = '▸', current_frame = '▸' },
  mappings = {
    expand = { '<CR>' },
    open = 'o',
    remove = 'd',
    edit = 'e',
    repl = 'r',
    toggle = 't',
  },
  expand_lines = true,
  layouts = {
    {
      elements = {
        { id = 'scopes', size = 0.5 },
        { id = 'breakpoints', size = 0.25 },
        { id = 'stacks', size = 0.25 },
      },
      size = 0.25,
      position = 'right',
    },
  },
  floating = {
    max_height = nil,
    max_width = nil,
    border = 'single',
    mappings = {
      close = { 'q', '<Esc>' },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil,
  },
}
