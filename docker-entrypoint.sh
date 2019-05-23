#!/bin/bash
set -eo pipefail
shopt -s nullglob

#if [ "$1" = '/bin/bash' ]; then
#    echo "/bin/bash"
#elif [ "$1" = '/usr/sbin/init' ]; then
#    echo "/usr/sbin/init"
#fi

#sh -c "ipvsadm"
#exec "$@"
#exec "/usr/sbin/init"
#sh -c "/usr/sbin/init"
#source "/usr/sbin/init"

## keep running
echo "..." > file.txt && tail -f file.txt
