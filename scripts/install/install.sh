echo "Please ensure that this script is executed from the project's root folder"
composer create-project
npm install
sudo docker-compose up -d
echo "Initiating Apache and Drupal within the docker container, this will take a few minutes..."
sleep 60s
echo "...ok that should be long enough, let's try it now."
sudo docker-compose exec web drush config-set system.site uuid "1a28a7c9-8c3b-4348-a6eb-1cd6ecb7833a"
sudo docker-compose exec web drush cim
echo "The Digital App is now available. You will need to visit the homepage to initiate the site and then set the Admin password using the 'set_admin_password.sh' script."
