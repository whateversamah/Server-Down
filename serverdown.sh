#!/bin/bash 
#######################################################################################
#Script Name    :serverdown.sh
#Description    :envoyer une alerte lorsque le serveur de bases de données MySQL s’est arrêté.
#Email          :admin1@gmail.com
#License       : GNU GPL-3	
#######################################################################################
## declare mail variables
##email subject 
subject="MySQL Server Is Down"
##sending mail as
from="server.monitor@example.com"
## sending mail to
to="admin1@gmail.com"
## send carbon copy to
also_to="admin2@example.com"
MYSQL_START='sudo service mysql start'
MYSQL='mysqld'
PGREP='/usr/bin/pgrep'
#check pid
$PGREP $MYSQL



if [ $? -ne 0 ]; then
        ## send email if MySQL server is down
        $MYSQL_START | echo -e "Warning, MySQL server is down | mailx -a "$file" -s "$subject" -r "$from" -c "$to" "$also_to"
fi




