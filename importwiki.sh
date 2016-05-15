#!/usr/bin/bash

while read ligne  
do  
    [ -z "$ligne" ] && continue
   echo "$ligne"
   curl -k -d "" \
    'https://wiki.manjaro.org/index.php?title=Special:Export&pages='$ligne'&offset=1&limit=5&pagelink-depth=0&action=submit' \
    -o "$ligne.export.xml"
done < ./pages.txt
