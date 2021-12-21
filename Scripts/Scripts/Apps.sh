#Games & Apps
function cdda(){
	/home/aeron/Games/cataclysmdda-0.F/cataclysm-launcher 
	disown
	sleep 2
	exit
}

function ffxi(){
	cd ~/WinePrefixes/FFXI/drive_c/WingsXI/Ashita/
	WINEPREFIX=/home/aeron/WinePrefixes/FFXI wine injector.exe "New Configuration 1.xml"
	disown
	cd ~
}

function fightcade(){
	/home/aeron/Emulators/Fightcade/Fightcade2.sh 
	disown
	exit
}

function meltyblood(){
	cd ~/WinePrefixes/MeltyBlood/drive_c/MeltyBlood/MBAACC/
	WINEPREFIX=/home/aeron/WinePrefixes/MeltyBlood/ WINEARCH=win32 wine cccaster.v3.0.exe & disown
       	cd ~
	exit
}

function ableton(){
	cd /home/aeron/WinePrefixes/Ableton/drive_c/Ableton/Live\ 10\ Suite/Program/
	wine Ableton\ Live\ 10\ Suite.exe & disown
	cd ~
	exit
}

function tsukihime(){
	cd "/home/aeron/Games/Tsukihime Pack/Tsukihime/Game/"
	./onscripter-en & disown
	exit
}

function flycast(){
	cd "/home/aeron/Emulators/flycast-dojo-0.4.15-ggpo-test-8"
	./flycast.elf & disown
	cd ~
	exit
}

function ryujinx(){
	cd /home/aeron/Emulators/Ryujinx_LDN
	./Ryujinx & disown
	exit
}

function byond(){
	cd /home/aeron/WinePrefixes/BYOND/drive_c/Program Files/BYOND/bin
	WINEARCH=win32 WINEPREFIX=/home/aeron/WinePrefixes/BYOND wine byond.exe & disown
	cd ~
	exit
}

function davinci(){
	cd /opt/resolve/bin/
	./resolve & disown
	exit
}
