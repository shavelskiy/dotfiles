require('dapui').setup {
  icons = { expanded = '▾', collapsed = '▸', current_frame = '▸' },
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
  controls = {
    enable = false,
  },
}
