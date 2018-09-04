
#!/bin/bash
#. /etc/bootstrap.sh

#set -euf -o pipefail

echo "starting sqoop server"
sqoop-server start
tail -f $SQOOP_HOME/@LOGDIR@/sqoop.log
