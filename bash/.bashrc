PS1="[\W] $ "
#Aliases
alias i="nvim ~/.config/i3/config"
alias ba="nvim ~/.bashrc"
alias x="nvim ~/.Xresources"
alias ld="xrdb -load ~/.Xresources"
alias ll="ls -al"
alias pi="nvim ~/.config/picom/picom.conf"
alias po="nvim ~/.config/polybar/config"
alias bs="nvim $HOME/.config/bspwm/bspwmrc"
alias sx="nvim $HOME/.config/sxhkd/sxhkdrc"
alias vim-commands="nvim -R /mnt/Hub/Documents/vim-commands.txt"
alias xm="xmodmap ~/.Xmodmap"

#Sourcing
source /home/aeron/Scripts/CustomFunctions.sh
source /home/aeron/Scripts/Apps.sh
source /home/aeron/Scripts/custom-xsetwacom.sh

#Exporting
export PATH=$PATH:/home/aeron/.local/bin
export VISUAL=nvim
export EDITOR=nvim
