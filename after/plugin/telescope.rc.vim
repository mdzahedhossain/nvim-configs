nnoremap <silent> ;f <Cmd>Telescope find_files<CR>
nnoremap <silent> ;r <Cmd>Telescope live_grep<CR>
nnoremap <silent> \\ <Cmd>Telescope buffers<CR>
nnoremap <silent> ;; <Cmd>Telescope help_tags<CR>
nnoremap <silent> ;m <Cmd>Telescope harpoon marks<CR>

lua <<EOF
  local actions = require('telescope.actions')

  require('telescope').setup {
    defaults = {
      file_ignore_patterns = {
        "node_modules"
      },
      mappings = {
        n = {
          ["q"] = actions.close
        },
      },
    },
  }

  require('telescope').load_extension('harpoon')

EOF
