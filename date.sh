#!/bin/bash

ad=`git log -1 --date=short --format="format:%ad"`
#echo ${ad}
ru_ad=`LANG=ru_RU date -jf "%Y-%m-%d" ${ad} "+%e %B %Y"`
#echo ${ru_ad}
echo "\\gdef\\GITAuthorDate{"${ru_ad}"}"
