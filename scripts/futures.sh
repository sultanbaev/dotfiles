#!/bin/sh

rm /home/sultanbaev/_main/*.gif
cd /home/sultanbaev/_main/ && wget -i /home/sultanbaev/Dropbox/_Important/_dotfiles/scripts/futures.txt
#cd /home/sultanbaev/_main/ && convert *.gif -negate *.gif
#for i in `ls /home/sultanbaev/_main/*.gif`; do convert ${i%.*}.gif ${i%.*}-inverted.gif; done