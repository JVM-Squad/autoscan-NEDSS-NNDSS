@echo off
set SINGLE_TIME_POLL = false
set NBS_DATA_CRON=0 */1 * * * *


set NND_DE_CLIENT_ID=nnd-keycloak-client
set NND_DE_SECRET=bpVTppDam4sxXt4hfgm5hZ6Rteponjb9
set NND_DE_URL=http://localhost:8081

set RDB_POLL_ENABLED=true
set DATASYNC_STORE_LOCAL=true
set DATASYNC_LOCAL_FILE_PATH=/Users/UserName/Desktop/File
set DATASYNC_BATCH_LIMIT=1000
set DATASYNC_DELETE=false


set OP_DBSERVER=localhost:1433
set OP_DBNAME=MSGOUTE
set DATASYNC_DBNAME=RDB
set OP_DBPASSWORD=fake.fake.fake.1234
set OP_DBUSER=sa

java -jar data-sync-service.jar