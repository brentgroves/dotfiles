source '/home/brent/dotfiles/zsh/zshrc_manager.sh'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/brent/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/brent/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/brent/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/brent/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/brent/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
