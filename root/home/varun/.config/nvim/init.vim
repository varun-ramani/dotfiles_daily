" Installing Plugins
call plug#begin('~/.config/nvim/plugged')
    " Beautification
        " Colorschemes
        Plug 'rakr/vim-one'
        Plug 'tomasr/molokai'
        Plug 'chriskempson/base16-vim'
        Plug 'dracula/vim'
        Plug 'NLKNguyen/papercolor-theme'
        " Other beautification
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'ryanoasis/vim-devicons'
    "" Improving Vim usability
        " Git support
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
        " Better text editing
        Plug 'jiangmiao/auto-pairs'
        Plug 'kien/rainbow_parentheses.vim'
        Plug 'scrooloose/nerdcommenter'
        Plug 'easymotion/vim-easymotion'
        " Autocompletion and Language Specific Features
        Plug 'Shougo/deoplete.nvim'
        Plug 'davidhalter/jedi-vim'
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'alvan/vim-closetag'
        Plug 'leafgarland/typescript-vim'
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'artur-shaik/vim-javacomplete2'
        Plug 'chrisbra/csv.vim'
        " Linting
        " Plug 'w0rp/ale'
        " Tags
        Plug 'majutsushi/tagbar'
        " File management
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'scrooloose/nerdtree'
        " Buffer management
        Plug 'chrisbra/NrrwRgn'
        Plug 'wesQ3/vim-windowswap'
    " Document Writing
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'donRaphaco/neotex'
    " Plug 'varun-ramani/docedit.nvim'
    " Not sure why this plugin is here to be honest
    Plug 'tpope/vim-sensible'
call plug#end()

" Affects fundemental text editing experience
set number
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
let g:NERDSpaceDelims = 1
let mapleader = ","

"" Affects the look of Vim
" Basic Color Stuff
" Colorscheme stuff
set termguicolors
set background=dark
colorscheme molokai
" Airline stuff
let g:airline_theme = 'deus'
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
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

" Tags
set autochdir
set tags=tags;
map <C-t> :TagbarToggle<CR>
" File management
map <C-p> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>
