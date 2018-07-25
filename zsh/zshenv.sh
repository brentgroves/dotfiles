export PATH="$HOME/bin:$PATH:/opt/local/bin"

# Node Project Manager Init
if which npm &> /dev/null; then
  eval "$(npm completion -)"
fi

# Node Version Manager
if [ -d $HOME/.nvm ]; then
  source $HOME/.nvm/nvm.sh
fi
