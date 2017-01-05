echo "Please ensure that this script is executed from the project's root folder"
composer create-project
npm install
sudo docker-compose -f docker-compose-dev.yml up -d
echo "Initiating Apache and Drupal within the docker container, this will take a few minutes..."
sleep 60s
echo "...ok that should be long enough, let's try it now."
sudo docker-compose exec web drush config-set system.site uuid "1a28a7c9-8c3b-4348-a6eb-1cd6ecb7833a"
sudo docker-compose exec web drush cim
sudo ./scripts/install/set_admin_password.sh
