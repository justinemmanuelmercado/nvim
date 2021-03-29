Plug 'tpope/vim-surround' " For surround commands 
Plug 'easymotion/vim-easymotion' " For moving around the terminal

Plug 'itchyny/lightline.vim' " Status bar thing
Plug 'cocopon/pgmnt.vim' " Theme and template manger

""" NERDTree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
 " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
""" fzf
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

""" Spaceduck 
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
"" Syntax highlighting
Plug 'sheerun/vim-polyglot'
"" Fugitive - Vim plugin for git
Plug 'tpope/vim-fugitive'
