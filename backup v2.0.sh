#!/bin/bash
DATE=$(date | sed s/' '//g)
dpkg --get-selections | grep -v deinstall > /backup/apt/apt${DATE}.txt
echo $(sudo tar czf /backup/${DATE}.gz /var/www/ . 2>/dev/null)
echo "Done!"
