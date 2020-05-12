#!/bin/bash

source=$0
username=$1
destination='./'+$username+'/';
tar --create --gzip --file=$destination'backup-$(date +%-Y-m%-d)-$(date +%-T).tgz' $source
