PS1="[\W] $ "
#Aliases
alias nv="nvim"
alias i="nvim ~/.config/i3/config"
alias ba="nvim ~/.bashrc"
alias x="nvim ~/.Xresources"
alias ld="xrdb -load ~/.Xresources"
alias ll="ls -al"
alias pi="nvim ~/.config/picom/picom.conf"
alias po="nvim ~/.config/polybar/config.ini"
alias bs="nvim $HOME/.config/bspwm/bspwmrc"
alias sx="nvim $HOME/.config/sxhkd/sxhkdrc"
alias vim-commands="nvim -R /mnt/Hub/Documents/vim-commands.txt"
alias xm="xmodmap ~/.Xmodmap"

#Sourcing
source $HOME/Scripts/customFunctions.sh
source $HOME/Scripts/custom-xsetwacom.sh

#Exporting
export PATH=$PATH:/home/aeron/.local/bin
export PATH=$PATH:/home/aeron/Applications/aseprite/build/bin
export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim
