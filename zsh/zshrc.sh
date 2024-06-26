# Commonly Changed settings
# setopt AUTO_CD
#motd_mode='updates'
#multiline_prompt='true'
#show_if_system='false'

source ~/dotfiles/zsh/preload.zsh # To be loaded before all else
  


# Source all the configs https://github.com/HeroCC/dotfiles/tree/master/zsh
source ~/dotfiles/zsh/history.zsh
source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/aliases.zsh
source ~/dotfiles/zsh/exports.zsh

# debian requires its own version /usr/share/zsh-antigen
# https://github.com/zsh-users/antigen 
# trouble shoot: delete ~/.antigen directory 
# and reinstall antigen: sudo apt-get install zsh-antigen
# then antigen reset.
# Debian antigen file
# source /usr/share/zsh-antigen/antigen.zsh
source ~/dotfiles/zsh/antigen.zsh # this depends on where you saved the file
antigen init ~/dotfiles/zsh/.antigenrc

neofetch

