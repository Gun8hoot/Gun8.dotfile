#! /bin/bash

# COMPLETELY STEAL FROM HERE = https://github.com/ray-pH/waybar-cava

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# write cava config
config_file="/tmp/waybar_cava_config"
echo "
[general]
bars = 18

[input]
method = pulse  ; Adapt to your own sound server.
source = auto   ; Go look the cava configuration file for more detail

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7

" > $config_file

# read stdout from cava
cava -p $config_file | while read -r line; do
    echo $line | sed $dict
done
