#!/usr/bin/env bash
SCRIPTDIR=`dirname "$BASH_SOURCE"`
cp $SCRIPTDIR/system-docker.socket /lib/systemd/system
systemctl enable system-docker.socket
systemctl start system-docker.socket

cp $SCRIPTDIR/system-docker.service /lib/systemd/system
systemctl enable system-docker.service
systemctl start system-docker.service

cp $SCRIPTDIR/etcd.service /lib/systemd/system
systemctl enable etcd.service
systemctl start etcd.service