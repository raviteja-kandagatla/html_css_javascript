# What is a service in Linux?
# Linux service is a background process that runs continuously to perform specific task.

# script to write the current time in file every 5 seconds:
#!/bin/bash
#
while true; do
 date | awk '{print $4}' >> /root/time
 sleep 5
done

# and provide the permissions to run the script
# chmod 777 timer.sh

create a service:
sudo nano /etc/systemd/system/time.service
[Unit]
# Description=Update the time with five seconds

[Service]
ExecStart=/root/timer.sh
Restart=always
User=root

[Install]
WantedBy=multi-user.target

# and then need to reload the systemd and start the time service
# sudo systemctl daemon-reload
# sudo systemctl start time
# sudo systemctl status time
# sudo systemctl stop time