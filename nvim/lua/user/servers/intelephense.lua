-- local phpVersion = '7.0'
-- local phpVersion = '7.1'
-- local phpVersion = '7.2'
-- local phpVersion = '7.3'
-- local phpVersion = '7.4'
-- local phpVersion = '8.0'
-- local phpVersion = '8.1'
local phpVersion = '8.2'

return {
  settings = {
    intelephense = {
      environment = {
        phpVersion = phpVersion,
      },
      files = {
        exclude = {
          '**/var/cache/**',
        },
      },
    },
  },
}
