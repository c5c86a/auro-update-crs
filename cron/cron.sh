#!/bin/sh

date >> /pull-crs.log

docker restart jira_waf_1 >> /pull-crs.log 2>&1
