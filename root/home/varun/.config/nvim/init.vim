" Installing Plugins
call plug#begin('~/.config/nvim/plugged')
" Beautification
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
Plug 'rakr/vim-one'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'

"" Improving Vim usability
" Git support
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Better text editing
Plug 'jiangmiao/auto-pairs'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tomtom/tcomment_vim'
" Autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" File management
Plug 'junegunn/fzf', { 'dir': '~/.config/nvim/plugged/fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
" Not sure why this plugin is here to be honest
Plug 'tpope/vim-sensible'
call plug#end()

" Affects fundemental text editing experience
set number
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab

"" Affects the look of Vim
" Setup basic color stuff
let base16colorspace=256
set termguicolors
set t_Co=256
" Colorscheme stuff
set background=dark
colorscheme base16-dracula
" Airline stuff
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
" Nice colored braces, brackets, etc. because those are very important
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"" Make Vim into an epic IDE
" Autocompletion + Snippets
let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" File management
map <C-p> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>


