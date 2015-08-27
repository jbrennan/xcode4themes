#!/usr/bin/env bash

theme_dir=~/Library/Developer/Xcode/UserData/FontAndColorThemes

for theme in *.dvtcolortheme; do
	path=$theme_dir/$theme
	if [[ -f "$path" ]]; then
		echo "removing theme file $theme"
		rm -f "$path"
	fi
done

if [[ -d "$theme_dir" ]]; then
	if [[ ! $(ls -A "$theme_dir") ]]; then
		echo "removing empty theme dir $theme_dir"
		rm -rf "$theme_dir"
	else
		echo "keeping non-empty theme dir $theme_dir"
	fi
else
	echo "could not find any installed themes"
fi