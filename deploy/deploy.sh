#!/bin/bash

/home/shiyanlou/Code/shiyanlou_cs355/venv/bin/supervisorctl -c  /home/shiyanlou/Code/shiyanlou_cs355/deploy/supervisor/supervisord.conf stop QA
kill -9 `ps -ef|grep gunicorn|grep -v grep|awk '{print $2}'`
/home/shiyanlou/Code/shiyanlou_cs355/venv/bin/supervisorctl -c  /home/shiyanlou/Code/shiyanlou_cs355/deploy/supervisor/supervisord.conf start QA

