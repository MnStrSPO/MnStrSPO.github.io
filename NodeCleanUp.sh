#!/bin/bash

find /opt/cardano/cnode/scripts/ -name "*bkp*" -exec rm {} 

find /opt/cardano/cnode/logs/archive/ -mtime +1 -name “*.json” -print -exec /bin/rm {} 

journalctl --rotate

journalctl --vacuum-time=2days
