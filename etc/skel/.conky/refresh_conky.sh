#!/bin/sh
colors=`cat $HOME/.cache/wal/colors.Xresources | grep "^*color" | tr -d "*:" | sed 's/ //g' | sed 's/#/="#/g' | sed ':a;N;$!ba;s/\n/"\n/g'`
colors="${colors}\""
cat /usr/bin/.conky/conky-pywal/templates/ram_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/ram.lua
cat /usr/bin/.conky/conky-pywal/templates/cpu_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/cpu.lua
cat /usr/bin/.conky/conky-pywal/templates/ssd_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/ssd.lua
cat /usr/bin/.conky/conky-pywal/templates/ssd2_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/ssd2.lua
cat /usr/bin/.conky/conky-pywal/templates/gpu_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/gpu.lua
cat /usr/bin/.conky/conky-pywal/templates/clock_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/clock.lua
cat /usr/bin/.conky/conky-pywal/templates/battery_template.lua | awk -v srch="COLORFIELD" -v repl="$colors" '{ sub(srch,repl,$0); print $0 }' > /usr/bin/.conky/conky-pywal/lua/battery.lua
