if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tomasiser/vim-code-dark'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

" view settings
colorscheme codedark
set noerrorbells
set number
set showmode
set showcmd
set ruler

" search settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" formatting defaults
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
  syntax on
endif

" enable filetype detection:
filetype on

" airline settings
let g:airline_theme = 'codedark'

