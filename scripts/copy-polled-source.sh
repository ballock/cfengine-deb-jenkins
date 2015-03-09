#!/bin/sh

ATOMIC_JOB_NAME=$( echo $JOB_NAME |cut -d / -f 1 )
PACKAGE=${ATOMIC_JOB_NAME%-source*}
cp -av "$JENKINS_HOME"/jobs/"$ATOMIC_JOB_NAME"/workspace/${PACKAGE}* .
cp -av "$JENKINS_HOME"/jobs/"$ATOMIC_JOB_NAME"/workspace/source .
