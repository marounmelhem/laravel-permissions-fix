#Set variables here
LARAVEL_OWNER=user # <-- owner (user)
LARAVEL_WS_GROUP=www-data # <-- WebServer group
LARAVEL_ROOT=/var/www/html # <-- Laravel root directory

# BEGIN Fix Laravel Permissions Script

# Adding owner to web server group
sudo usermod -a -G ${LARAVEL_WS_GROUP} ${LARAVEL_OWNER}

# Set files owner/group
sudo chown -R ${LARAVEL_OWNER}:${LARAVEL_WS_GROUP} ${LARAVEL_ROOT}

# Set correct permissions for directories 
sudo find ${LARAVEL_ROOT} -type f -exec chmod 644 {} \;

# Set correct permissions for files 
sudo find ${LARAVEL_ROOT} -type d -exec chmod 755 {} \;

# Set webserver group for storage + cache folders
sudo chgrp -R ${LARAVEL_WS_GROUP} ${LARAVEL_ROOT}/storage ${LARAVEL_ROOT}/bootstrap/cache

# Set correct permissions for storage + cache folders
sudo chmod -R ug+rwx ${LARAVEL_ROOT}/storage ${LARAVEL_ROOT}/bootstrap/cache

# END Fix Laravel Permissions Script