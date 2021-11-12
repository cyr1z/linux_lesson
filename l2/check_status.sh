#!/bin/bash
SITE=http://stock.zolotarev.pp.ua

if curl -w “totaltime:%{time_total}\n” -s -I -L http://stock.zolotarev.pp.ua | grep "200 OK" > /dev/null
        then
                echo "The HTTP server on ${SITE} is up!" > /dev/null
        else
                (echo "Subject: The HTTP server on ${SITE} is down") | /opt/stockworker/tg.sh -

fi

## https://github.com/fabianonline/telegram.sh

