# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

my_battery () {
  my_battery=`pmset -g batt | grep InternalBattery | awk '{ print $3 }' | awk -F\; '{print $1}' | awk -F\% '{print $1}'`
  echo "%{$fg[red]%}[${my_battery}%%]%{$reset_color%}"
}
