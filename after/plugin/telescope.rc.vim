nnoremap <silent> ;f <Cmd>Telescope find_files hidden=true<CR>
nnoremap <silent> ;r <Cmd>Telescope live_grep<CR>
nnoremap <silent> \\ <Cmd>Telescope buffers<CR>
nnoremap <silent> ;; <Cmd>Telescope help_tags<CR>
nnoremap <silent> ;m <Cmd>Telescope harpoon marks<CR>

lua <<EOF
  local actions = require('telescope.actions')

  require('telescope').setup {
    defaults = {
      mappings = {
        n = {
          ["q"] = actions.close
        },
      },
    },
  }
  require('telescope').load_extension('harpoon')
  require('telescope').load_extension('frecency')
  require('telescope').load_extension("arecibo")
EOF
