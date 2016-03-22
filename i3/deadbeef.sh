#!/bin/sh

art_title = 'deadbeef --nowplaying "%a - %t"'

#while [ "$(deadbeef --nowplaying "%a - %t")" != "nothing" ]
#do
#echo WORKING!
#done

if [ "$(art_title)" != 'nothing' ]; then
        echo "$(deadbeef --nowplaying "%a - %t")" "::: "
        #echo "$a" "::: "
        else echo " "
fi