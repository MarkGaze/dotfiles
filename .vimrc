if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

" view settings
set background=dark
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

highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Nerdtree settings
nmap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" fzf settings

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~20%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
  \ { 'fg':    ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

map ; :Files<CR>
