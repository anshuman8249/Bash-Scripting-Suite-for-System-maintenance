set -e
LOG="/var/log/auth.log"
ERROR_COUNT=$(grep -ci "failed" $LOG)
DISK_USE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ "$ERROR_COUNT" -gt 20 ]; then
    echo "Warning: $ERROR_COUNT failed login attempts."
fi

if [ "$DISK_USE" -gt 80 ]; then
    echo "Warning: Disk usage is ${DISK_USE}%!"
fi

echo "Log monitoring done."
