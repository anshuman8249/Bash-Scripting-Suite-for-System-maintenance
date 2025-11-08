Wipro Capstone Project – Assignment 5 (LinuxOS & LSP)  
Bash Scripting Suite for System Maintenance

Name: Anshuman Behera
GitHub: [anshuman8249]([https://github.com/anshuman8249])  
Email: anshumanbehera49@gmail.com
Date: November 08, 2025  
Live Project:https://github.com/anshuman8249/Bash-Scripting-Suite-for-System-maintenance


Objective (As Per Assignment)
Write a suite of Bash scripts to automate system maintenance tasks such as backup, system updates, log monitoring, and combine them into a menu to execute them.


Day-wise Tasks (Exactly as in Assignment Table)

| Day | Task | Status | Implementation |
|-----|------|--------|----------------|
| **Day 1** | Write a script for automated system backup | Done | `scripts/backup.sh` – Uses `rsync` with timestamp |
| **Day 2** | Create a script to perform system updates and cleanup | Done | `scripts/update_and_cleanup.sh` – `apt update`, `upgrade`, `autoremove`, `autoclean` |
| **Day 3** | Develop a log monitoring script to alert on certain conditions | Done | `scripts/logmoniter.sh` – Monitors `/var/log/syslog` for `error`, `fail`, `warning` |
| **Day 4** | Combine scripts into a maintenance suite with a menu to execute them | Done | `maint_menu.sh` – Interactive menu with 5 options |
| **Day 5** | Test scripts and add error handling and logging functionalities | Done | Full logging to `logs/`, input validation, exit codes |



How to Run

```bash
cd ~/wipro-capstone
./main.sh



