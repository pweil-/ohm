#!/usr/bin/env bash

oc login https://api.free-int.openshift.com --token=$TOKEN
oc project pweil

oc new-app /home/pweil/codebase/ohm/appcreate/template.json


oc delete all -l="template=application-template-stibuild"

