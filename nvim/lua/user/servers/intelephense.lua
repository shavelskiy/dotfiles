return {
  settings = {
    intelephense = {
      environment = {
        phpVersion = '8.4',
      },
      files = {
        exclude = {
          '**/var/cache/**',
        },
      },
    },
  },
}
