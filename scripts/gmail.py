#!/usr/bin/env python

from urllib.request import FancyURLopener

email = 'sultanbaev.vitaly' # @gmail.com can be left out
password  = 'vita151090glibertate'

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

fullcount = contents[ifrom:ito]

print(fullcount + ' new')