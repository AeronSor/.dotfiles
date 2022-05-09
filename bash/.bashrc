PS1="[\W] $ "
PS2=">>  "
#Aliases
alias nv="nvim"
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
alias cw="custom-xsetwacom"

alias hub="cd /mnt/Hub"
alias projects="cd /mnt/Hub/Projects"
alias coding="cd /mnt/Hub/Projects/Coding && ranger"

#Sourcing
source $HOME/Scripts/customFunctions.sh
source $HOME/Scripts/custom-xsetwacom.sh

#Exporting
export PATH=$PATH:/home/aeron/.local/bin
export PATH=$PATH:/home/aeron/Applications/aseprite/build/bin
export PATH=$PATH:/home/aeron/Scripts/
export PATH=/home/aeron/.npm-global/bin:$PATH
export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim
