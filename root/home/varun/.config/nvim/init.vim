call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'   
Plug 'thaerkh/vim-indentguides'
Plug 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

set number
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors

colorscheme dracula
set background=dark
let g:one_allow_italics = 1

let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1

let g:ctrlp_working_path_mode = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
