if [[ -a /usr/bin/nvim ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Add Antigen
#debian requires its own version so set in ~/.zshrc file ANTIGEN_PATH=/usr/share/zsh-antigen
# export ANTIGEN_PATH='/usr/share/zsh/share'
export ANTIGEN_PATH='/usr/share/zsh-antigen'
source $ANTIGEN_PATH/antigen.zsh
antigen init ~/dotfiles/zsh/.antigenrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVIM_PYTHON_LOG_FILE=/tmp/log                                      
export NVIM_PYTHON_LOG_LEVEL=DEBUG
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
