call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim'
call plug#end()

set number
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors

colorscheme one
set background=dark
let g:one_allow_italics = 1

let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
