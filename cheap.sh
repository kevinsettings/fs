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
local check_id=$(storm "https://raw.githubusercontent.com/kevinsettings/fs/refs/heads/main/idcheap.txt")
local check_vip=$(echo "$check_id" | grep -q "$AXERONID" && echo true || echo false)
if [ $check_vip = true ]; then
  echo ""
  sleep 1
  echo ""
  echo "
█▀▀ █░█ █▀▀ ▄▀█ █▀█
█▄▄ █▀█ ██▄ █▀█ █▀▀"
  echo ""
  sleep 1
  animation "- Version : v1.0 Cheap"
  sleep 0.5
  animation "- Developer : @shockwave's"
  sleep 0.1
  echo
  echo 
  sleep 0.6
  echo
  echo "shockwave ,${RED}berhasil terpasang"
  sleep 0.6
  echo
adjust_coordinate() {
    local coordinate=$1
    local max_value=$2
    (( coordinate < 0 )) && coordinate=0
    (( coordinate > max_value )) && coordinate=max_value
    echo $coordinate
}
perform_swipe() {
    local x1=$1
    local y1=$2
    local x2=$3
    local y2=$4
    local sensivity=${5:-500}

    sleep 0.5
    input swipe $x1 $y1 $x2 $y2 $sensivity
}

execute_swipes() {
    local sensivity_value=500
    local max_value=1000

    local x_coordinate=$(adjust_coordinate $((RANDOM % max_value)) $sensivity_value)
    local y_coordinate=$(adjust_coordinate $((RANDOM % max_value)) $sensivity_value)

    perform_swipe $x_coordinate 0 $x_coordinate $sensivity_value
    perform_swipe $x_coordinate $sensivity_value $x_coordinate 0
    perform_swipe 0 $y_coordinate $sensivity_value $y_coordinate
    perform_swipe $sensivity_value $y_coordinate 0 $y_coordinate
}
execute_swipes > /dev/null 2>&1

responsive() {
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5
settings put global background_process_limit 0
settings put global mobile_data_always_on 1
settings put global battery_saver_mode 0
settings put global auto_update_enabled 0
settings put global low_memory_mode 1
settings put global zram_enabled 1
settings put system pointer_speed 8
settings put secure show_touches 1
settings put system stylus_double_tap_duration 100
}

responsive > /dev/null 2>&1
 
sensifity() {
    cmd notification post -S bigtext -t 'FILESETTINGSX' 'Tag' 'ACTIVE'
    wm density 350
}

sensifity > /dev/null 2>&1
  sleep 0.2
else
  echo ""
  sleep 0.6
  echo
  echo "Invalid device, ${RED} silahkan buy file original"
  sleep 0.6
  sleep 2
  echo
  echo
fi
