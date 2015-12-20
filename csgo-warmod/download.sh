#!/bin/bash

MMVERSION=$( curl http://www.metamodsource.net/downloads/ | grep -o "mmsource-[0-9\.]*-linux.tar.gz" | head -n 1 )
curl -o $MMVERSION http://www.gsptalk.com/mirror/sourcemod/$MMVERSION

SMVERSION=$(  curl http://www.sourcemod.net/downloads.php?branch=stable | grep -Eo "sourcemod-.*?-linux.tar.gz" | head -n 1 )

SMMAJORVERSION=$( echo $SMVERSION | grep -Eo "\-[0-9]*\.[0-9]*" |  grep -Eo "[0-9]*\.[0-9]*")

echo $SMVERSION
echo $SMMAJORVERSION

SMURL="http://www.sourcemod.net/smdrop/$SMMAJORVERSION/$SMVERSION"
curl -o $SMVERSION $SMURL

