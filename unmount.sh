#!/bin/bash

# <bitbar.title>Auto remove HD after backup</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>Tobias Schulz-Hess</bitbar.author>
# <bitbar.desc>Checks, if time machine backup is running and if so, ejects HD</bitbar.desc>
# <bitbar.dependencies>bash/bitbar.dependencies>
# <bitbar.abouturl>https://source.xing.com/tobias-schulz-hess/</bitbar.abouturl>



TMVOLUME="/Volumes/TimeMachine_ExtHD"
TMUUID="TimeMachine_ExtHD"

test -d "$TMVOLUME"
if [ $? = 0 ]
   then
#      log show --style syslog  --predicate 'senderImagePath contains[cd] "TimeMachine" AND eventMessage contains[cd] "Backup completed successfully"' --info --last 10m | grep -v 'Filtering\|Timestamp'
#      if [ $? = 0 ]
#          then
#             /usr/sbin/diskutil unmount "$TMUUID"
#             echo "Backup just completed - unmounting|color=#00FF00"
#      else
#             echo "↻|color=#88FF88"
#      fi
   echo "↻|color=#88FF88"
   echo "---"
   echo "Unmount | bash='/usr/sbin/diskutil unmount TimeMachine_ExtHD' terminal=false"
   echo "TimeMachine | bash='open -b com.apple.systempreferences /System/Library/PreferencePanes/TimeMachine.prefPane' terminal=false"
else
   echo "Backup HD not inserted|color=#888888"
   echo "---"
   echo "Mount | bash='/usr/sbin/diskutil mount TimeMachine_ExtHD' terminal=false"
fi
