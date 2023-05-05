lua<<EOF
  local mark = require('harpoon.mark')
  local ui = require('harpoon.ui')
  local tmux = require('harpoon.tmux')
  local map = vim.keymap.set

  map('n', '<C-h>', function()
    local buffers = vim.api.nvim_list_bufs()
    if #buffers > 0 then
      local absoluteFilename = vim.fn.expand('%:p')
      mark.add_file(absoluteFilename)
    end
  end, { noremap = true })
EOF
