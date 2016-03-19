#!/bin/sh

#vsego = deadbeef --nowplaying "%l"
#proshlo = deadbeef --nowplaying "%e"
#art_title = deadbeef --nowplaying "%a - %t"

#aaa = 10
#bbb = 3
#c = 0

#${exec sensors | grep 'Core 0:' | cut -c18-19}'C

#echo WORKING!
#deadbeef --nowplaying "%l"
#deadbeef --nowplaying "%e"

#while [ "$(deadbeef --nowplaying "%a - %t")" != "nothing" ]
#do
#echo WORKING!
#done


#let "c = a - b"
#let SUBTRACTION=
#echo "$(deadbeef --nowplaying "%l" | grep ':' | cut -c1-1})" - "$(deadbeef --nowplaying "%e")" "::: "
#echo $SUBTRACTION "::: "
#echo $[a-b] "::: "

if [ "$(art_title)" != 'nothing' ]; then
        echo "$(deadbeef --nowplaying "%a - %t")" "::: "
        #echo "$a" "::: "
        else echo ""
fi