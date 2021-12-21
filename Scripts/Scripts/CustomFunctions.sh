#!bin/zsh

# Weather utility
function weather-report(){
    curl "https://wttr.in/"
}

# Encoding
function encode-mp4/mov(){
    echo "(1) Mp4 > Mov | (2) Mov > Mp4"
    read VALUE

    if [ $VALUE -eq 1 ]
    then
        echo "Name of the file"
        read name
        ffmpeg -i $name.mp4 -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov $name.mov
    fi

    if [ $VALUE -eq 2 ]
    then
        echo "Name of the file"
        read name
        ffmpeg -i $name.mov -c:v libx264 -preset ultrafast -crf 0 $name.mp4
    fi
}

# SSH 
function quickSSH(){
	echo "(1) Website send, (2) Website receive, (3) Retroarch send, (4) Retroarch send -bios-"
	read number
	
	if [ $number -eq 1 ]
	then
		scp -r -P 777 /run/media/Hub/Projects/Coding/SSH/WaveNode/* aeron@194.195.211.207:/var/www/wavenode.tk/
	fi
	
	if [ $number -eq 2 ]
	then
		scp -r -P 777 'aeron@194.195.211.207:/var/www/wavenode.tk/*' /run/media/Hub/Projects/Coding/SSH/WaveNode/
	fi
	
	if [ $number -eq 3 ]
	then
		ls "/run/media/Hub/Emulators/1.Games/"
		echo "Select the folder (exact match case)"
		read folderNAME
  		
		scp -r -P 5013 /run/media/Hub/Emulators/1.Games/$folderNAME retro@10.0.0.192:Retroarch  
	fi

	if [ $number -eq 4 ]
	then
		ls "/run/media/Hub/Emulators/5.Bios/"
		echo "Select system bios to send"
		read biosFolder

		scp -P 5013 /run/media/Hun/Emulators/5.Bios/$biosFolder/* retro@10.0.0.192:.config/retroarch/system
	
	fi
}

