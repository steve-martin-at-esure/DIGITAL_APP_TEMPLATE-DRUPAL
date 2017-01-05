
echo "Warning: Please access the site before running this script."
read -p "Continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo docker-compose exec web drush uli
	sudo docker-compose exec web drush upwd --password="weblogic1" "admin"
fi