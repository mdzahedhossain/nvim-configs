if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim'
Plug 'preservim/nerdtree'

Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Install nvim-lspconfig
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  " Plug 'kabouzeid/nvim-lspinstall'
  " Plug 'glepnir/lspsaga.nvim'
  Plug 'tami5/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " Plug 'ms-jpq/coq_nvim', { 'branch' : 'coq'}
  " Plug 'ms-jpq/coq.artifacts', { 'branch' : 'artifacts'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'itchyny/lightline.vim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'

  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Or build from source code by using yarn: https://yarnpkg.com
  " Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'github/copilot.vim'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'simrat39/rust-tools.nvim' " this works with mason, lspconfig to provide rust analyzer
  Plug 'nvim-neorg/neorg'
  Plug 'ThePrimeagen/harpoon'

  Plug 'beauwilliams/focus.nvim'
  
  " Markdown related
  Plug 'ellisonleao/glow.nvim'

  Plug 'kkharji/sqlite.lua' | Plug 'nvim-telescope/telescope-frecency.nvim'

  " https://github.com/nvim-telescope/telescope-arecibo.nvim
  Plug 'nvim-telescope/telescope-arecibo.nvim'
endif

call plug#end()

