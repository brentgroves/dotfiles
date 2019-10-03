
" GLOBAL variables
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier','eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

set laststatus=2
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ }
      \ }
function! LightLineFilename()
	  return expand('%')
  endfunction

" Good Articles

" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html#learning-the-map
" https://www.slothparadise.com/copy-system-clipboard-vim/
" https://vim.fandom.com/wiki/Copy,_cut_and_paste
" https://github.com/christoomey/vim-system-copy
" https://www.circuidipity.com/neovim/
" NeoVim Vundle install link https://gist.github.com/lujiacn/520e3e8abfd1c1b39c30399222766ee8



" Mapping section
" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html#learning-the-map
inoremap jk <esc>
" Start TMUX section
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" End TMUX section


" dein plugins
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('idanarye/vim-vebugger')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim

set nocompatible               " be improved, required
filetype off                   " required
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
"
 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'tpope/vim-sensible'
 Plugin 'tpope/vim-obsession'
 Plugin 'christoomey/vim-tmux-navigator'
 Plugin 'christoomey/vim-system-copy'
 "all of your Plugins must be added before the following line
call vundle#end()            " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this 
 "


"Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'https://github.com/wesQ3/vim-windowswap'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern', {'do': 'npm install'}
call plug#end()
" :PlugInstall    - installs plugins;

" General Vim settings
let mapleader=","	    " Often used must initialize no default
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set nocompatible	    " be iMproved and dein, required
filetype plugin indent on   " allows auto-indenting depending on file type
" filetype off              " Maybe Vundle requires this???
" To ignore plugin indent changes, instead use:
"filetype plugin on
syntax on                   " syntax highlighting
" preserve indentation in paste
set paste


