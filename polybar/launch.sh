#!/bin/bash
## kill all old process of ploybar
killall -q polybar
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

echo "---" | tee -a /tmp/polybar.log
polybar -r i3bar & /tmp/polybar.log 2>&1 &
echo "Polybar launched"