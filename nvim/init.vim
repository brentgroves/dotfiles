" sudo apt-get install gpm --To enable mouse support
" https://unix.stackexchange.com/questions/444601/any-terminal-shell-with-mouse-support
call plug#begin('~/.local/share/nvim/plugged')
	" https://github.com/dense-analysis/ale#installation-with-vim-plug
	" https://sweetcode.io/configuring-eslint-nodejs-project/
	Plug 'dense-analysis/ale'
	if has('nvim')
	  " https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
	Plug 'deoplete-plugins/deoplete-jedi'
	" https://atom.io/packages/atom-ternjs example configuration file.
	" https://www.gregjs.com/vim/2016/configuring-the-deoplete-asynchronous-keyword-completion-plugin-with-tern-for-vim/
	Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
	" https://microsoft.github.io/language-server-protocol/implementors/servers/
	" https://langserver.org/#arbitraryExecutionFootnote
	" https://github.com/sourcegraph/javascript-typescript-langserver
	" https://github.com/palantir/python-language-server
	Plug 'autozimu/LanguageClient-neovim', {
	    \ 'branch': 'next',
	    \ 'do': 'bash install.sh',
	    \ }
	" https://github.com/SirVer/ultisnips
	" Track the engine.
	Plug 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
	" https://github.com/Shougo/deoplete.nvim/issues/724
	" https://blog.prismatik.com.au/snippets-in-vim-43cf2ad79000
	" https://brigade.engineering/sharpen-your-vim-with-snippets-767b693886db#.53n8qt3p6i
	" Plug 'honza/vim-snippets'

	" do more research on this article
	" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
	" Plug 'othree/jspc.vim'


	" https://github.com/powerline/fonts
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'edkolev/tmuxline.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'scrooloose/nerdcommenter' "redefine the key map
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'prettier/vim-prettier', { 'do': 'npm install' }
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<c-j>"
  let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
  let g:UltiSnipsSnippetsDir = $HOME."/.config/UltiSnips"
  let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.config/UltiSnips']
  let g:UltiSnipsEnableSnipMate = 0
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"


" LanguageClient settings
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['tcp://127.0.0.1:2089'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> <F3> :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <F4> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Auto pairs settings
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" vim commentary
autocmd FileType apache setlocal commentstring=#\ %s



" ALE settings
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

"----------------------------------------------------------
" Neovim's Python provider
"----------------------------------------------------------
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
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]
" Set bin if you have many instalations
" let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'
let g:deoplete#sources#ternjs#timeout = 1


" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
" let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
" let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
" let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
" let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
" let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
" let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
" let g:deoplete#sources#ternjs#in_literal = 0


"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

"vim-airline settings
let g:airline_theme='dark' 
" let g:airline_theme='base16' 
" <theme> is a valid theme name
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:tmuxline_powerline_separators = 1


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



" My Buffer settings
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>


