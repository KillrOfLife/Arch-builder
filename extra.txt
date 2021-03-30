#add to .bashrc or .bash_profile

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -le 5 ]; then
	exec startx -- vt${XDG_VTNR}
fi



#add to .xinitrc

nitrogen --restore &
picom &

case $XDG_VTNR in
	1) exec awesome;;
	2) exec awesome;;
	*) exec screenfetch;;
esac