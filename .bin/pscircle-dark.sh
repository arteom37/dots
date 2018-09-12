#!/bin/bash

# xfce wall
# xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s ~/.pscircle.png

set -e
output=$HOME/.pscircle.png

pscircle \
	--output-width=1366 \
	--output-height=768 \
	--background-image=$HOME/.config/wall/wl2.png \
	--link-color-min=375143a0 \
	--link-color-max=375143 \
	--dot-color-min=7c762f \
	--dot-color-max=b56e46 \
	--tree-font-color=94bfd1 \
	--toplists-font-color=C8D2D7 \
	--toplists-pid-font-color=7B9098 \
	--toplists-bar-background=444444 \
	--toplists-bar-color=7d54dd \
	--max-children=55 \
	--tree-radius-increment=110 \
	--dot-radius=3 \
	--link-width=1.3 \
	--tree-font-face="Clear Sans Medium" \
	--tree-font-size=11 \
	--toplists-font-size=12 \
	--toplists-bar-width=30 \
	--toplists-row-height=15 \
	--toplists-bar-height=3 \
	--cpulist-center=400.0:-80.0 \
	--memlist-center=400.0:80.0 \
	--interval=0 \
	--output=$output

if command -v feh >/dev/null; then
	feh --bg-fill $output
	rm $output
fi