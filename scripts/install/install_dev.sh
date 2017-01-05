echo "Please ensure that this script is executed from the project's root folder"
composer create-project
npm install
sudo docker-compose -f docker-compose-dev.yml up -d
sudo docker-compose exec web config-set system.site uuid "1a28a7c9-8c3b-4348-a6eb-1cd6ecb7833a"
sudo docker-compose exec web drush cim
echo "Please wait a few more minutes before accessing the site as docker is still setting up apache in the background."
