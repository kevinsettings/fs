$AXFUN
RED="\033[31m"
animation() {
text="$1"
  color="$2"
 i=0
   while [ $i -lt ${#text} ]; do
     echo -en "\e[${color}m${text:$i:1}\e[0m"
 sleep 0.02
   i=$((i + 1))
 done
echo
}
echo ""
sleep 0.4
animation "-delete filesettingsx"
sleep 0.1
default() {
settings put global window_animation_scale 1
settings put global transition_animation_scale 1
settings put global animator_duration_scale 1
settings delete system input_latency
settings delete system touchspeed
settings delete system touch_timeout
settings delete system touch_slop
wm size reset
}
animation "-succes delete"
