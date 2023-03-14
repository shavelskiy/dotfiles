return {
  settings = {
    intelephense = {
      environment = {
        phpVersion = '8.2',
      },
      files = {
        exclude = {
          '**/var/cache/**',
        },
      },
    },
  },
}
