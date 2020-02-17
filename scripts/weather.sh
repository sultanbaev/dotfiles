#!/bin/bash

weather() {
     if [ ! -z $1 ]
     then
         curl -4 http://wttr.in/$1
     else
         curl -4 http://wttr.in/Uchaly
     fi
  
	}
weather $1
exit
