#!/bin/sh

user_name="mia"
home_dir="/home/$user_name"
tmp_dir="$home_dir/tmp"

# base dirs
cd $home_dir
mkdir -p ./own
mkdir -p ./tmp

export EDITOR=vi; sudo visudo

# install
sudo pacman -S git base-devel neovim curl wget btop vlc

# install yay
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $user_name:$user_name ./yay-git
cd yay-git
makepkg -si

# install pacui
cd $tmp_dir
yay -S expac fzf pacman-contrib
wget https://raw.githubusercontent.com/excalibur1234/pacui/master/pacui
chmod +x ./pacui
sudo cp ./pacui /usr/bin/

# install zsh
yay -S zsh
chsh -s /usr/bin/zsh
# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# dotfiles
cd $tmp_dir
git clone https://github.com/Nils75owo/dotfiles
cp ./.xinitrc $home_dir/.xinitrc
cp ./.zshrc $home_dir/.zshrc
cp -r ./.config/* $home_dir/.config/
mkdir -p $home_dir/Pictures/wallpapers/bgl
cp -r ./Pictures/wallpapers/bgl/* $home_dir/Pictures/wallpapers/bgl/

# install desktop
yay -S i3-wm\
  polybar\
  rofi\
  kitty\
  picom-ibhagwan-git\
  chromium\
  pamixer\
  brightnessctl\
  feh\
  flameshot\
  network-manager-applet\
  dunst\
  thunar












sudo tee /usr/bin/i3zen > /dev/null << EOM
#!/bin/zsh
script_name=i3zen
TFILE=/tmp/_I3ZEN
if [[ -f "\$TFILE" ]] then;
    i3-msg gaps inner all set 10
    /home/mia/.config/polybar/launch.sh
    rm \$TFILE
else;
    killall polybar
    i3-msg gaps inner all set 0
    touch \$TFILE
fi;
EOM
sudo tee /usr/bin/bgl > /dev/null << EOM
#!/bin/zsh
TFILE=/tmp/_BGL
IFILE=/tmp/_BGLI
DIR=~/Pictures/wallpapers/bgl
TIMEOUT=160
script_name=bgl
for pid in $(pidof -x $script_name); do
    if [ $pid != $$ ]; then
        kill -9 $pid
    fi 
done
IDX=0
touch "$TFILE"
touch "$IFILE"
while (true) do;
		for f in $DIR/* ; do
      IDX=IDX+1;
			if [[ -f "$TFILE" ]] then;
				feh --bg-scale $f --bg-scale $f
			fi;
      sleep $TIMEOUT
		done;
done;
EOM
sudo tee /usr/bin/bglt > /dev/null << EOM
#!/bin/zsh
TFILE=/tmp/_BGL
if [[ -f "$TFILE" ]] then;
	rm "$TFILE"
	exit
fi;
touch "$TFILE"
EOM
sudo tee /usr/bin/batteryWarning > /dev/null << EOM
#!/bin/bash
while (( 1 == 1 )); do
	if (( $(cat /sys/class/power_supply/BAT1/capacity) <= 10 )); then
		if [[ $(cat /sys/class/power_supply/BAT1/status) != "Charging" ]]; then
			notify-send "Battery Low"
		fi
	fi
	sleep 15
done
EOM
sudo tee /usr/bin/way-bgl > /dev/null << EOM
#!/bin/zsh
script_name=way-bgl
for pid in $(pidof -x $script_name); do
    if [ $pid != $$ ]; then
        kill -9 $pid
    fi
done
TFILE=/tmp/_WAY-BGL
touch "$TFILE"
DIR=~/Pictures/wallpapers/bgl
while (true) do;
    for f in $DIR/* ; do
        if [[ -f "$TFILE" ]] then;
            killall swaybg
            swaybg -i $f&
        fi;
        sleep 60
    done;
done;
EOM
sudo tee /usr/bin/way-bglt > /dev/null << EOM
#!/bin/zsh
TFILE=/tmp/_WAY-BGL
if [[ -f "$TFILE" ]] then;
    rm "$TFILE"
    exit
fi;
touch "$TFILE"
EOM
