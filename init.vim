call plug#begin('~/.vim/plugged') " Setup vim-plug

source $HOME/.config/nvim/src/typescript.vim
source $HOME/.config/nvim/src/plugins.vim
source $HOME/.config/nvim/src/coc.vim
call plug#end() " END vim-plug

let g:lightline = {
            \ 'colorscheme': 'spaceduck',
            \ }

"" vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
nmap S <Plug>(easymotion-overwin-F)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>h <Plug>(easymotion-linebackward)
"" End vim-easymotion

source $HOME/.config/nvim/src/general.vim
