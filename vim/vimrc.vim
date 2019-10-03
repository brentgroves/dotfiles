" General Vim settings
	syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html#learning-the-map
" https://www.slothparadise.com/copy-system-clipboard-vim/
" https://vim.fandom.com/wiki/Copy,_cut_and_paste
" https://github.com/christoomey/vim-system-copy
" preserve indentation in paste
set paste


inoremap jk <esc>

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



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
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
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
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
	let g:tmux_navigator_no_mappings = 1
	
	nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
	nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
	nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
	nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
	nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
"	group END

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
 	call plug#end()
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

