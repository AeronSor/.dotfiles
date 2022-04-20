Personal dotfiles for my Arch-Linux bspwm setup 😎

[ UNDER CONSTRUCTION]

<b>Dependencies</b>

Don't forget to enable multilib on your pacman.conf

Pacman: 
```
sudo pacman -S --needed -<~/.dotfiles/dependencies/core.txt
```

yay: 
```
yay -S $(cat ~/.dotfiles/dependencies/core_aur.txt |xargs) --needed
```
I am just storing a list of dependencies for now, because I don't know
a better way to keep track of them o(TヘTo), if you do, let me know ;)
(I might write a script to handle just that in the future)

</p>
Image below for preview
<img src="Images/bspwm.png">
<img src="Images/bspwm-2.png">
<img src="Images/bspwm-3.png">
