lua<<EOF

  local mark = require('harpoon.mark')
  local ui = require('harpoon.ui')
  local tmux = require('harpoon.tmux')
  local harpoon = require('harpoon')

  local map = vim.keymap.set

  map('n', '<C-h>', function ()
    local buffers = vim.api.nvim_list_bufs()
    if #buffers > 0 then
      local absoluteFilename = vim.fn.expand('%:p')
      mark.add_file(absoluteFilename)
    end
  end, { noremap = true })

  harpoon.setup({
      menu = {
          width = vim.api.nvim_win_get_width(0) - 4,
      }
  })

EOF
