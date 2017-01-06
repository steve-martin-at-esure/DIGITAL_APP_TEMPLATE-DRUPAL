
echo "Warning: Please ensure that you have initiated the site by visiting the homepage."
read -p "Continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo docker-compose exec web drush uli
	sudo docker-compose exec web drush upwd --password="weblogic1" "admin"
fi