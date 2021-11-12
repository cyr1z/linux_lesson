#! /bin/bash
rm -f /home/ubuntu/Projects/stockworker/storage/app/backup/old-dump.sql
mv /home/ubuntu/Projects/stockworker/storage/app/backup/dump.sql /home/ubuntu/Projects/stockworker/storage/app/backup/old-dump.sql
docker exec stockworker-db bash -c "mysqldump --user=homestead --password=secret --host=stockworker-db homestead > ./docker-entrypoint-initdb.d/dump.sql"
zip -9 /home/ubuntu/Projects/stockworker/storage/app/backup/db-dump.zip /home/ubuntu/Projects/stockworker/storage/app/backup/dump.sql
/opt/stockworker/tg.sh -f /home/ubuntu/Projects/stockworker/storage/app/backup/db-dump.zip "DB Dump $(date '+%Y-%m-%d')"
rm -f /home/ubuntu/Projects/stockworker/storage/app/backup/db-dump.zip

## https://github.com/fabianonline/telegram.sh
