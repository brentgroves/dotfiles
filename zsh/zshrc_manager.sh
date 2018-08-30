time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

#[[ -o interactive ]] && echo "This ZSH Shell is a Interactive Shell" || echo "This ZSH Shell is Not a Interactive Shell"

#[[ -o login ]] && echo "This ZSH Shell is a Login Shell" || echo "This ZSH Shell is Not a Login Shell"

# Run tmux if exists
# if command -v tmux>/dev/null; then
#	[ -z $TMUX ] && exec tmux
#else 
#	echo "tmux not installed. Run ./deploy to configure dependencies"
#fi


[[ -o login ]] && [ -z $TMUX ] && exec tmux 


echo "Updating configuration"
#(cd ~/dotfiles && time_out 3 git pull && time_out 3 git submodule update --init --recursive)
#(cd ~/dotfiles && git pull && git submodule update --init --recursive)
source ~/dotfiles/zsh/zshrc.sh
#source ~/whatshell.sh
