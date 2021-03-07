wacom_devices="$(xsetwacom list devices | echo $(grep -o '[0-9]\+'))"

for wacom_device in $wacom_devices
do
  xsetwacom set $wacom_device MapToOutput 1920x1080+1280+0
done

#* Configuring wacom:
#* list monitor devices
# $ xrandr --query
#* list wacom devices
# $ xsetwacom list devices
#* set wacom to be confined in one monitor
# $ xsetwacom set 19 MapToOutput 1920x1080+1280+0
