return {
  settings = {
    intelephense = {
      environment = {
        phpVersion = '8.3',
      },
      files = {
        exclude = {
          '**/var/cache/**',
        },
      },
    },
  },
}
