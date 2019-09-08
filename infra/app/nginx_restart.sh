 #!/bin/bash

logrotate -f /etc/logrotate.d/nginx

sudo systemctl stop nginx.service
sudo systemctl start nginx.service
