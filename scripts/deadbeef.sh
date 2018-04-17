#!/bin/sh

art_title = '/home/svvitaly/Dropbox/_Programs/Progs_w_deb/DeadBeef64/deadbeef --nowplaying "%a - %t"'

#while [ "$(deadbeef --nowplaying "%a - %t")" != "nothing" ]
#do
#echo WORKING!
#done

if [ "$(art_title)" != 'nothing' ]; then
        echo ""$(/home/svvitaly/Dropbox/_Programs/Progs_w_deb/DeadBeef64/deadbeef --nowplaying "%a - %t")"" "   ::: "
        else
        	echo " "
fi