#!/bin/bash
set -eo pipefail
shopt -s nullglob

#if [ "$1" = '/bin/bash' ]; then
#    echo "/bin/bash"
#elif [ "$1" = '/usr/sbin/init' ]; then
#    echo "/usr/sbin/init"
#fi

sh -c "echo 'enable ipvsadm.service' >> /usr/lib/systemd/system-preset/90-systemd.preset"
sh -c "echo 'enable ipvsadm.service' >> /usr/lib/systemd/system-preset/90-default.preset"
sh -c "sysctl -p"
sh -c "ln -s /usr/lib/systemd/system/ipvsadm.service /etc/systemd/system/multi-user.target.wants/ipvsadm.service"
#sh -c "ipvsadm"
#exec "$@"
exec "/usr/sbin/init"
#sh -c "/usr/sbin/init"
#source "/usr/sbin/init"

## keep running
#echo "..." > file.txt && tail -f file.txt
