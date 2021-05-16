"This setting must be before plugin
let g:ale_disable_lsp = 1
"##################################
"plugins
"##################################
" automatic installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"theme
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'antoinemadec/FixCursorHold.nvim' "requirement for fern
Plug 'lambdalisue/fern.vim'
Plug 'Yggdroot/indentLine'

call plug#end()
"##################################

" to do search options

set hidden

"##################################
let g:python3_host_prog = '/usr/bin/python3'
set history=10000
set encoding=utf-8
set linebreak
"set exrc "load local vimrc, cause slow start
"##################################
" Text options
"##################################
set clipboard+=unnamed

"##################################
" User Interface
"##################################
set title
set wildmenu
set nu
set relativenumber
"set cursorline
set helpheight=999 "show full size help
set background=dark
colorscheme codedark
set mouse=a
set visualbell
set scrolloff=8
set signcolumn=yes
set colorcolumn=80

"##################################
"tab and space, indent
"##################################
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

"##################################
" file management
"##################################
set confirm
set hidden
set autoread
set nobackup
"undoの永続化 ~/.vim/undoは事前に用意する
if has('persistent_undo')
    let undo_path = expand('~/.vim/undo')
    exe 'set undodir=' .. undo_path
    set undofile
endif
set noswapfile
set nobackup
set undodir=~/.vim/undo
set undofile

"##################################
"search
"##################################
set hlsearch
set ignorecase
set incsearch
set smartcase
set wrapscan " 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
nnoremap <Esc><Esc> :nohlsearch<CR><ESC> "off highligh

"##################################
"statusbar
"##################################
set laststatus=2
set showcmd
set ruler
set display=lastline

"##################################
"syntax highlight
"#################################
syntax on

"##################################
"brackets
"##################################
set showmatch

"##################################
"command line
"##################################
set wildmenu wildmode=list:longest,full


"##################################
"keymaps
"##################################
let mapleader = "\<Space>""
