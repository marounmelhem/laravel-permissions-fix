# Laravel Permissions Fix Script

A simple bash shell script to update Laravel files and folders permission and owner

## IMPORTANT: Set LARAVEL_OWNER, LARAVEL_WS_GROUP and LARAVEL_ROOT before running

## TO RUN (after logging in to your server using SSH):

### 1. Navigate to desired directory (outside your root directory)

```sh
cd /var/www/
```

### 2. Download the script

```sh
wget https://raw.githubusercontent.com/marounmelhem/laravel-permissions-fix/dev/perm_fix.sh
```

### 3. Configure default variables as per your server configuration:

```
#Set variables here
LARAVEL_OWNER=user # <-- owner (user)
LARAVEL_WS_GROUP=www-data # <-- WebServer group
LARAVEL_ROOT=/var/www/html # <-- Laravel root directory
```

### 4. Set execute permission to it:

```sh
chmod +x perm_fix.sh
```

### 5. Run the script:

```sh
./perm_fix.sh
```
