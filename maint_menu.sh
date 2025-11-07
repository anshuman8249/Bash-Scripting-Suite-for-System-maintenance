LOGFILE="/var/log/maint_suite/maint.log"
exec > >(tee -a "$LOGFILE") 2>&1
while true; do
  echo "===== Maintenance Menu ====="
  echo "1) Backup"
  echo "2) Update & Clean"
  echo "3) Log Monitor"
  echo "4) Run All"
  echo "5) Exit"
  read -p "Enter choice [1-5]: " choice

  case $choice in
    1) sudo bash /opt/Scripting_suite/backup.sh ;;
    2) sudo bash /opt/Scripting_suite/update_and_cleanup.sh ;;
    3) sudo bash /opt/Scripting_suite/log_monitor.sh ;;
    4) sudo bash /opt/Scripting_suite/backup.sh
       sudo bash /opt/Scripting_suite/update_and_cleanup.sh
       sudo bash /opt/Scripting_suite/log_monitor.sh ;;
    5) echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid choice." ;;
  esac
done
