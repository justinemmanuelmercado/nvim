"" General config
set nocompatible
syntax on " Set syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark " Dark bg
set encoding=UTF-8 " For vim-devicons
set number	" Show line numbers
set relativenumber	" Show relative line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set noshowmode " Remove --insert status bar--

set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

"" Advanced
set ruler	" Show row and column ruler information

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behavior
set laststatus=2 " Status bar
set t_Co=256 " colors

set mouse=a
" Add tsx to typescript syntax highlighting
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact
augroup END

"" Theme
set notermguicolors
colorscheme iceberg
let g:lightline = {
            \ 'colorscheme': 'iceberg',
            \ }
"" Completion menu
set completeopt=longest,menuone


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keybindings 
"" Map <Space> to leader
nnoremap <SPACE> nop
let mapleader = "\<Space>"

"" Map ctrl+x and ctrl+c in V mode
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

"" Relative numbers in normal mode. No relative otherwise 
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"" Unhighlight searched text when exiting normal mode
autocmd InsertEnter * :let @/=""
autocmd InsertLeave * :let @/=""

" Move lines of text using <leader> h/j/k/l.
nnoremap <leader>j mz:m+<cr>`z
nnoremap <leader>k mz:m-2<cr>`z
vnoremap <leader>j :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <leader>k :m'<-2<cr>`>my`<mzgv`yo`z
nnoremap <leader>l >>
nnoremap <leader>h <<
vnoremap <leader>l >gv4l
vnoremap <leader>h <gv4h

" Allow paste and undo in insert and visual mode.
vnoremap <c-u> <esc>u
inoremap <c-u> <esc>ua
inoremap <c-v> <c-g>u<esc>pa<c-g>u

" Make Y yank to end of line (much like C and D).
nnoremap Y y$

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" Map ctrl+p to open fzf :GFiles
nnoremap <C-p> :GFiles<CR>
" Map ctrl+shift+p to open CocList command
nnoremap <leader>p :CocList commands<CR>

" Open COC menu
inoremap <silent><expr> <C-space> coc#refresh()
