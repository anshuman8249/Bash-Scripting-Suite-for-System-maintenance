set -e
BACKUP_DIR="/var/backups/Scripting_suite"
DATE=$(date +%F-%H%M)
BACKUP_FILE="$BACKUP_DIR/backup-$DATE.tar.gz"

echo "Starting backup..."
sudo tar -czf "$BACKUP_FILE" /etc /home
echo "Backup saved to $BACKUP_FILE"
