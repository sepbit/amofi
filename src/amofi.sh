#!/usr/bin/env sh
#
# Amofi - App mode for Firefox
# Copyright (C) 2017-2019  Sepbit
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

#
# Directory custom profile
#
DIR="/tmp/sepbit/amofi"

#
# Check if Mozilla Firefox is installed
#
if [ ! "$(command -v firefox)" ]; then
    echo "firefox command not found"
    exit
fi

#
# Check if the URI was entered
#
if [ -z "$1" ]; then
    echo 'URI is missing ...'
    exit
fi

#
# Check if the directory does not exist
#
if [ ! -d "$DIR" ]; then
    #
    # Create directory
    #
    mkdir -p "$DIR"/chrome
fi

#
# Custom profile
#
echo \
"#nav-bar {
    display: none !important;
}
#TabsToolbar {
    display: none !important;
}" \
>> "$DIR"/chrome/userChrome.css

echo \
"user_pref(\"browser.tabs.warnOnClose\", false);" \
>> "$DIR"/user.js

#
# Execute custom profile
#
firefox -profile "$DIR" -no-remote -new-instance "$1" \
        -width 800 -height 600
