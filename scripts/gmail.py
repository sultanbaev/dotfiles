#!/usr/bin/env python

from urllib.request import FancyURLopener

email = 'sultanbaev.vitaly' # @gmail.com can be left out
password  = 'v1l'

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

fullcount = contents[ifrom:ito]

fullcount_int = int(fullcount)

if fullcount_int == 0:
	print('::: ')
	
else:
	print('::: ' + fullcount + ' NEW ::: ')

	# ----------------------------------------------------------------

	import subprocess
	playerpath = "mpg123"
	filepath = "/home/sultanbaev/Dropbox/_Important/_dotfiles/sounds/new_mail.mp3"
	subprocess.call([playerpath, filepath])