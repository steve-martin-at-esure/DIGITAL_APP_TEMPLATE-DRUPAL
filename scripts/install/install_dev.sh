echo "Please ensure that this script is executed from the project's root folder"
composer create-project
npm install
docker-compose -f docker-compose-dev.yml up -d
echo "Please wait a few more minutes before accessing the site as docker is still setting up apache in the background."
