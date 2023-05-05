lua << EOF
require('neorg').setup {
  load = {
    ["core.defaults"] = {}, -- loads default behaviour
    ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.norg.dirman"] = { -- Manages neorg workspaces
      config = {
        workspaces = {
          notes = "~/Development/Notes",
        },
      },
    },
  },
}
EOF
