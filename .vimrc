"Use vundle to manage plugin, required turn file type off and nocompatible
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Let vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'

"My bundles and plugin config here:
"-----------------------------------------------------------------------------

"typescript
Plugin 'leafgarland/typescript-vim'

"solarized
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256

"NERDTree
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

"airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
"Plugin 'vim-syntastic/syntastic'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if !empty($SSH_CONNECTION)
    let g:airline_left_sep = '⮀'
    let g:airline_left_alt_sep = '⮁'
    let g:airline_right_sep = '⮂'
    let g:airline_right_alt_sep = '⮃'
    let g:airline_symbols.branch = '⭠'
    let g:airline_symbols.readonly = '⭤'
    let g:airline_symbols.linenr = '⭡'
    let g:airline#extensions#tabline#left_sep = '⮀'
endif

"let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#symblo='!'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_theme='luna'
nnoremap <C-h> :bn<CR>
nnoremap <C-l> :bp<CR>

call vundle#end()
filetype plugin indent on

"-----------------------------------------------------------------------------

"Show line number, command, status line and so on
set history=50
set ruler
set number
set showcmd
set noshowmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\

"Turn off annoying error sound
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
colorscheme solarized
set background=dark
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgray  ctermfg=white
"set cursorcolumn

"Configure backspace to be able to across two lines
set backspace=2
"set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4
set tabstop=8
set autoindent
set cindent

"Files, backups and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set nohlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

"other
set mouse=c
set t_Co=256
set pastetoggle=<F9>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

"emacs key
inoremap <C-a> <ESC>^i
inoremap <C-e> <ESC>$a
inoremap <C-f> <ESC>la
inoremap <C-b> <ESC>ha
inoremap <C-n> <ESC>ja
inoremap <C-p> <ESC>ka
inoremap <C-k> <ESC>ld$a

"Gvim
if has("gui_running")
    colorscheme solarized
    set guioptions=agic
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
    set guiheadroom=0
endif

"go to last cursor location
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
