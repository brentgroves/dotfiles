function norris { # Print a formatted chuck norris joke
if [ "$1" ]; then
  timeout $1 wget "http://api.icndb.com/jokes/random" -qO- | jshon -e value -e joke -u |
  recode html | cowsay -f tux
else
  norris 3
fi
}

# up
	function up_widget() {
		BUFFER="cd .."
		zle accept-line
	}
	zle -N up_widget
#	bindkey "^[k" up_widget

# git
	function git_prepare() {
		if [ -n "$BUFFER" ];
			then
				BUFFER="git add -A; git commit -m \"$BUFFER\" && git push"
		fi

		if [ -z "$BUFFER" ];
			then
				BUFFER="git add -A; git commit -v && git push"
		fi
				
		zle accept-line
	}
	zle -N git_prepare
	bindkey "^[g" git_prepare


