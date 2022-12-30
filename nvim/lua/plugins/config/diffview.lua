require('diffview').setup {
  enhanced_diff_hl = true,
  show_help_hints = false,
  icons = {
    folder_closed = '',
    folder_open = '',
  },
}

require('utils.loader').mapping 'diffview'
require('utils.loader').highlight 'diffview'
