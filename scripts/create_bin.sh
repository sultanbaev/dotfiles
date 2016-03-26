#!/bin/sh

echo "#!/bin/sh" > /usr/bin/2k
echo "rm ~/2.pdf" >> /usr/bin/2k
echo "wget "http://nsu.ru/rs/media/file/%D0%A4%D0%B0%D0%BA%D1%83%D0%BB%D1%8C%D1%82%D0%B5%D1%82%D1%8B/%D0%92%D0%9A%D0%98/%D0%92%D0%9A%D0%98_%D1%81%D1%82%D1%83%D0%B4%D0%B5%D0%BD%D1%82%D1%83/2.pdf"" >> /usr/bin/2k
echo "evince ~/2.pdf" >> /usr/bin/2k

echo "#!/bin/sh" > /usr/bin/bbbb
echo "exec "/home/sultanbaev/Dropbox/_Programs/Progs_w_deb/DeadBeef64/deadbeef"" >> /usr/bin/bbbb

echo "#!/bin/sh" > /usr/bin/dddd
echo "exec "/home/sultanbaev/Dropbox/_Programs/Progs_w_deb/doublecmd64/doublecmd"" >> /usr/bin/dddd