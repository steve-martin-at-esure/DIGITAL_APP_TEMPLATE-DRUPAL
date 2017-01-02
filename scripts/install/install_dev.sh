echo "Please ensure that this script is executed from the project's root folder"
composer create-project
npm install
docker-compose -f demo-compose-dev.yml up -d