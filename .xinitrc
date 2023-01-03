export PATH=~/bin/:$PATH
xhost +local:
xrdb -merge ~/.Xresources
#~/bin/upd

exec i3
