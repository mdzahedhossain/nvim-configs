lua << EOF
require('neorg').setup {
  load = {
    ["core.defaults"] = {}, -- loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.dirman"] = { -- Manages neorg workspaces
      config = {
        workspaces = {
          notes = "~/Development/Notes",
        },
      },
    },
  },
}
EOF
