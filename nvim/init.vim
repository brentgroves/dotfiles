" https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
" https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
" http://learnvimscriptthehardway.stevelosh.com/chapters/04.html
" https://vi.stackexchange.com/questions/7722/how-to-debug-a-mapping
" https://thoughtbot.com/blog/my-life-with-neovim
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'davidhalter/jedi-vim'
	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
	Plug 'zchee/deoplete-jedi'
	Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
 	Plug 'carlitux/deoplete-ternjs'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'scrooloose/nerdcommenter' "redefine the key map
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" vim commentary
autocmd FileType apache setlocal commentstring=#\ %s

"----------------------------------------------------------
" Neovim's Python provider
"----------------------------------------------------------
let g:python_host_prog  = '/home/brent/.pyenv/shims/python'
let g:python3_host_prog = '/home/brent/.pyenv/shims/python'

"Deoplete settings
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]
"vim-airline settings
let g:airline_theme='simple' " <theme> is a valid theme name

"nerdCommenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



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
syntax on                   " syntax highlighting

" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>
" map - x
noremap <silent> pr :Prettier<CR>
noremap <silent> // :call NERDComment("n", "Toggle")<CR>













