#!/bin/bash

find /opt/cardano/cnode/scripts/ -type f -name "*bkp*" -delete

find /opt/cardano/cnode/logs/archive -mtime +1 -name "*.json" -delete

journalctl --rotate

journalctl --vacuum-time=2days
