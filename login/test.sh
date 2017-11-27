#!/usr/bin/env bash

# performed a watch on this every 5 seconds to gather data
TIME="%e" time oc login $URL -u $USER -p $PASSWORD > /dev/null 2>>login.txt && oc logout > /dev/null