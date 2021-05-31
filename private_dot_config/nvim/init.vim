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
"Bug fix
Plug 'antoinemadec/FixCursorHold.nvim' "requirement for fern

"fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}

"File manager
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'

"Git
Plug 'airblade/vim-gitgutter'

"Language
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'

"Utilities
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-easy-align'
Plug 'tyru/open-browser.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tomtom/tcomment_vim'
Plug 'alvan/vim-closetag'
Plug 'simeji/winresizer'
Plug 'junegunn/vim-easy-align'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

"Theme, status line, style
Plug 'marko-cerovac/material.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'ryanoasis/vim-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
"ONLY Nightly
if has('nvim-0.5')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
"Syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'luochen1990/rainbow'
"file manager
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'
endif

call plug#end()
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_filetype_exclude = ['help']
"##################################
if has('nvim-0.5')
    colorscheme material
    let g:material_style = 'darker'
endif
if has('unix')
    let g:python3_host_prog = '/usr/bin/python3'
endif
if has('mac')
    let g:python3_host_prog = '/usr/local/bin/python3'
endif

"##################################
xmap ga <Plug>(EasyAlign)
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>nmap ga <Plug>(EasyAlign)
set timeoutlen=500
set hidden
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
set cursorline
set helpheight=999 "show full size help
"set background=dark
"colorscheme codedark
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
let mapleader = "\<Space>"
vnoremap ? :'<,'>TComment<CR> "depend on tcommnet
inoremap <silent> jk <ESC>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
