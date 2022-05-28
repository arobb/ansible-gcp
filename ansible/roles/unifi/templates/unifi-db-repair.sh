#! /bin/sh
# https://metis.fi/en/2018/02/gcp-unifi-code/
# https://github.com/riihikallio/unifi/blob/master/startup.sh#L250-L268
if ! pgrep mongod; then
  if [ -f /var/lib/unifi/db/mongod.lock ] \
  || [ -f /var/lib/unifi/db/WiredTiger.lock ] \
  || [ -f /var/run/unifi/db.needsRepair ] \
  || [ -f /var/run/unifi/launcher.looping ]; then
    if [ -f /var/lib/unifi/db/mongod.lock ]; then rm -f /var/lib/unifi/db/mongod.lock; fi
    if [ -f /var/lib/unifi/db/WiredTiger.lock ]; then rm -f /var/lib/unifi/db/WiredTiger.lock; fi
    if [ -f /var/run/unifi/db.needsRepair ]; then rm -f /var/run/unifi/db.needsRepair; fi
    if [ -f /var/run/unifi/launcher.looping ]; then rm -f /var/run/unifi/launcher.looping; fi
    echo >> $LOG
    echo "Repairing Unifi DB on \$(date)" >> $LOG
    su -c "/usr/bin/mongod --repair --dbpath /var/lib/unifi/db --smallfiles --logappend --logpath ${MONGOLOG} 2>>$LOG" unifi
  fi
else
  echo "MongoDB is running. Exiting..."
  exit 1
fi
exit 0