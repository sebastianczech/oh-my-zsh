# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

disk_status () {
  disk_status=`df -h | grep /dev/disk1s1 | grep -v com.apple.TimeMachine | awk  '{ print $4}'`
  echo "%{$fg[green]%}[${disk_status}]%{$reset_color%}"
}
