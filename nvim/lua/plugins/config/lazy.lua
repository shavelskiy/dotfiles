require('lazy').setup(require 'plugins.plugins', {
  ui = {
    icons = {
      cmd = '',
      event = '➜',
      start = '➜',
    },
  },
})

require('utils.loader').highlight 'lazy'
