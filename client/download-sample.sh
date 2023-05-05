#!/usr/bin/env sh

[ ! -f /tmp/eicar.com     ] && wget https://secure.eicar.org/eicar.com     -O /tmp/eicar.com
[ ! -f /tmp/eicar.com.txt ] && wget https://secure.eicar.org/eicar.com.txt -O /tmp/eicar.com.txt
[ ! -f /tmp/eicar_com.zip ] && wget https://secure.eicar.org/eicar_com.zip -O /tmp/eicar_com.zip
[ ! -f /tmp/eicarcom2.zip ] && wget https://secure.eicar.org/eicarcom2.zip -O /tmp/eicarcom2.zip

clamdscan2 /tmp