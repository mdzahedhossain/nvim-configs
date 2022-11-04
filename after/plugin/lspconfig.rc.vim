if !exists('g:lspconfig')
  finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap = true, silent = true }
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

  --- In lsp attach function
  -- local map = vim.api.nvim_buf_set_keymap
  buf_set_keymap("n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", {silent = true, noremap = true})
  buf_set_keymap("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
  buf_set_keymap("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
  buf_set_keymap("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})


  -- Zahed: this below line was "if client.resolved_capabilities.document_formatting then" before
  if client.server_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  -- require 'completion'.on_attach(client, bufnr)

    --protocol.SymbolKind = { }
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
}

nvim_lsp.dockerls.setup {
  on_attach = on_attach,
  cmd = {"docker-langserver", "--stdio"},
  filetypes = {"dockerfile"}
}

EOF
