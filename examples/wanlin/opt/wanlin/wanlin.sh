#!/bin/bash

###############################################################
#Vitortec Wanlin
#
#Bash Version 4.4.12(1)-release
#
#package   Vitorteccom\Wanlin
#author    Vitor Aloisio <vitor.guia@vitortec.com>
#copyright 2011-2018 Vitortec.com
#license   https://www.gnu.org/licenses/gpl-3.0.en.html GPLv3
#version   GIT: <git_id>
#see       https://devs.vitortec.com/wanlin Documentation of Wanlin
###############################################################

#URL to web application
url="https://devs.vitortec.com/wanlin/example/"

#Width to window
width=800

#Height to window
height=600

# Directory to custom configuration
dir="/tmp/wanlin"

#Check if directory exist
if [ ! -d $dir ]; then
  mkdir -p $dir/chrome

  #custom configuration
  custom="#nav-bar {\
            visibility: hidden !important;\
            max-height: 0 !important;\
            margin-bottom: -20px !important;
        }\
        #TabsToolbar {
            display: none !important;
        }"

  echo $custom >> $dir/chrome/userChrome.css
fi

#Execute custom configuration
firefox -profile $dir/ -no-remote -new-instance $url -width $width -height $height
