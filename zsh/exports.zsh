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


export NVM_DIR="$HOME/.nvm"
# export NVIM_PYTHON_LOG_FILE=/tmp/log                                      
# export NVIM_PYTHON_LOG_LEVEL=DEBUG
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/home/bgroves@BUSCHE-CNC.COM/anaconda3/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew";
export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar";
export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew";
export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin${PATH+:$PATH}";
# export PATH="$PATH:/opt/mssql-tools/bin"
export PATH="$PATH:/opt/mssql-tools18/bin"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:${INFOPATH:-}";
export TMPDIR="/tmp" 

export LD_LIBRARY_PATH=/usr/oaodbc81/lib64${LD_LIBRARY_PATH:+":"}${LD_LIBRARY_PATH:-""}
export OASDK_ODBC_HOME=/usr/oaodbc81/lib64; 
export ODBCINI=/usr/oaodbc81/odbc64.ini; 

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# https://howtodoinjava.com/java/basics/java-classpath/
export CLASSPATH=/usr/lib/jvm/ext/*.jar
# for crontab editor
export VISUAL="nvim"
# export CLASSPATH=/usr/lib/jvm/ext:/dependency/*:/location
# export TMPDIR="~/tmp" 
