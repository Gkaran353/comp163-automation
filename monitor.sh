# COMP163 - Monitoring Script

SERVICE="nginx"
LOGFILE="/var/log/nginx_monitor.log"

if systemctl is-active --quiet $SERVICE
then
    echo "$(date) - Nginx is running" >> $LOGFILE
else
    echo "$(date) - Nginx is DOWN! Restarting..." >> $LOGFILE
    sudo systemctl restart $SERVICE
fi
