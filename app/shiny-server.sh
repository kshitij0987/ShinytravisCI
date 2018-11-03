#!/bin/bash

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
mkdir -p /var/log/shiny-server/custom-logs
mkdir -p /etc/shiny-server/app-data
mkdir -p /etc/shiny-server/UserProfiles
chown shiny.shiny /etc/shiny-server/UserProfiles
chown shiny.shiny /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server/custom-logs
chmod -R 777 /srv/shiny-server/shinyapp

exec shiny-server >> /var/log/shiny-server.log 2>&1