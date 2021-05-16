#!/bin/bash

len=${#1}
magicbyte="\x47"
high="$(( len / 256 ))"
high=$( printf '\\x%x' $high )
low="$(( len % 256 ))"
low=$( printf '\\x%x' $low )

printf "%b%b%b%s" $magicbyte $high $low "$1" | netcat -w 1 localhost 10008  


