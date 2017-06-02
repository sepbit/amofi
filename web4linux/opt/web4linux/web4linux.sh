#!/bin/bash
#Name: Web 4 Linux;
#Version: 0.0.1;
#Date: 2017-05-31;
#Developer: Vitor Aloisio - Vitortec.com;
#URL: https://developers.vitortec.com/script/web4linux/;
#License: MIT.

#Custom
url="https://developers.vitortec.com/script/web4linux/example/"
width="800"
height="600"

#Directory
dir="/tmp/web4linux"

#Directory check
if [ ! -d $dir ];
then

  mkdir $dir
  mkdir $dir/chrome
  echo "#nav-bar { visibility: hidden !important; max-height: 0 !important; margin-bottom: -20px !important; } #TabsToolbar { display: none !important; }" >> $dir/chrome/userChrome.css

fi

#Run
firefox -profile $dir/ -no-remote -new-instance $url -width $width -height $height
