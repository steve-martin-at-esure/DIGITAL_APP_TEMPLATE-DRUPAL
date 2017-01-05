## Digital App Scripts

### composer
This folder contains two scripts used by the Drupal 8 composer processes.

(Some scripts may need to be run as `SUDO` on a test/prod environment.)

* `ScriptHandler.php` Used to build the core Drupal 8 scaffolding.
* `copy_dev_files.sh` Copies files from the /app/ folder to the /web/ folder (but doesn't do any pre-processing - see dev_workflow)

### data
Contains data population scripts to ensure the Digital App has some initial data when it first goes live.

*  (TBD) `day_one` Creates some initial data to ensure the Digital App has some enough to first go live.
*  (TBD) `update_from_prod` Collects the latest data from the prod server.

### dev_workflow
This folder contains two scripts used by the Drupal 8 composer processes.

* `update_now.sh` A Grunt process used to pre-process the files within /app/ and then execute the `copy_dev_files.sh` to copy the files to /web/.
* `start.sh` similar as above but also uses Grunt to 'watch' the files within /app/, updating them whenever a change is detected.
* `clear_cache.sh` Performs a drush cex command, clearing all of the cache.
* `config_export.sh` Will export the current Drupal config into the /app/config/ folder. 
* `config_import.sh` Will export the current Drupal config into the /app/config/ folder. 


### docker
This folder contains Docker related scripts.

* `access_container.sh` Performs a Docker command allowing you to 'login' to the docker container.

### drupal_admin
This folder contains scripts to help with Drupal 8 administration.

* `admin_login.sh` Performs a drush uli command, allowing you to create the admin username and password.


### install
Contains a number scripts for installing (and un-installing) this Digital App.

*  `install_dev.sh` Installs the Digital App and the development workflow files.
*  `install.sh` Installs the Digital App only.
*  `uninstall_docker_all` Removes all Docker Containers and Docker Images.
*  `clean.sh` 'Cleans' the Digital App folder structure by removing all of the package management folders and the /web/ folder. Ready for a clean install again.