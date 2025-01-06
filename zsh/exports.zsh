if [[ -a /usr/bin/nvim ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi
export PATH="$PATH:$HOME/bin/sqlpackage"
export PATH="$HOME/bin/shell_scripts:$PATH"
export PATH="$HOME/fpc-3.2.0/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/home/brent/miniconda3/bin/conda:$PATH"
# export PATH="/home/bgroves@BUSCHE-CNC.COM/anaconda3/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$HOME/bin:/usr/local/go/bin:$PATH
export PATH=$HOME/.local/bin:$HOME/sdk/go1.22.0/bin/:$PATH
export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin${PATH+:$PATH}";
export PATH="$PATH:/opt/mssql-tools18/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
export PYENV_ROOT="$HOME/.pyenv"
export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew";
export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar";
export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew";
export KUBECONFIG="$HOME/.kube/config"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:${INFOPATH:-}";
export TMPDIR="/tmp" 
export LD_LIBRARY_PATH=/usr/oaodbc81/lib64${LD_LIBRARY_PATH:+":"}${LD_LIBRARY_PATH:-""}
export OASDK_ODBC_HOME=/usr/oaodbc81/lib64; 
export ODBCINI=/usr/oaodbc81/odbc64.ini; 
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# https://howtodoinjava.com/java/basics/java-classpath/
export CLASSPATH=/usr/lib/jvm/ext/*.jar
export VISUAL="nvim"
export KUBE_EDITOR="nvim"
