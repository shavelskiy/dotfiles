return {
  settings = {
    intelephense = {
      environment = {
        phpVersion = '8.4',
      },
      completion = {
        propertyCase = 'camel',
      },
      files = {
        exclude = {
          '**/var/cache/**',
        },
      },
    },
  },
}
