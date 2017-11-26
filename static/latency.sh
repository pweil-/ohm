#!/usr/bin/env bash

# note to self, currently scheduled in local cron with
# * * * * * /home/pweil/codebase/ohm/static/latency.sh http://hello-openshift-pweil.d800.free-int.openshiftapps.com/ >> /home/pweil/codebase/ohm/static/latency.txt

external_url=$1
#service_name=$2

curl -w "ROUTE response:%{http_code}, seconds:%{time_total}\n" -o /dev/null -s -I -m 30 $1
#curl -w "SVC response:%{http_code}, seconds:%{time_total}\n" -o /dev/null -s -I -m 30 $2