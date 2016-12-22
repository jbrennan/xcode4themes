#!/usr/bin/env bash

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp *.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

kill 15 `lsof -c Xcode`
open -a Xcode
