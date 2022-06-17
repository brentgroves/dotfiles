" sudo apt-get install gpm --To enable mouse support
" https://unix.stackexchange.com/questions/444601/any-terminal-shell-with-mouse-support
"  When installing add so /home/brent/dotfiles/nvim/init.vim to ~/.config/nvim/init.vim
"Install vim plug plugin manager
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :source ~/.vimrc
" :source ~/.config/nvim
" :PlugStatus
" :PlugInstall
" :PlugUpdate
" :PlugClean
" :PlugUpgrade
call plug#begin('~/.local/share/nvim/plugged')
	  " https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" LanguageClient settings
" Required for operations modifying multiple buffers like rename.
set hidden

"----------------------------------------------------------
" Neovim's Python provider
"----------------------------------------------------------
" let g:python3_host_prog = '/home/brent/.pyenv/shims/python'

"Deoplete settings

let g:deoplete#enable_at_startup = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#enable_camel_case = 1
" let g:deoplete#enable_refresh_always = 1
" let g:deoplete#max_abbr_width = 0
" let g:deoplete#max_menu_width = 0
" let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
" let g:tern_request_timeout = 1
" let g:tern#command = ["tern"]
" let g:tern#arguments = [" — persistent"]
" " Set bin if you have many instalations
" " let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'
" let g:deoplete#sources#ternjs#timeout = 1


" " Whether to include the types of the completions in the result data. Default: 0
" let g:deoplete#sources#ternjs#types = 1

" " Whether to include the distance (in scopes for variables, in prototypes for 
" " properties) between the completions and the origin position in the result 
" " data. Default: 0
" let g:deoplete#sources#ternjs#depths = 1

" " Whether to include documentation strings (if found) in the result data.
" " Default: 0
" let g:deoplete#sources#ternjs#docs = 1

" " When on, only completions that match the current word at the given point will
" " be returned. Turn this off to get all results, so that you can filter on the 
" " client side. Default: 1
" let g:deoplete#sources#ternjs#filter = 0


:

" Mapping section
" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html#learning-the-map



