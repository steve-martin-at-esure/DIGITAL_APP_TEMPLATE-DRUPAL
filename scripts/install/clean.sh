echo "Please ensure this script is executed from the project's root folder."
echo "Warning: This will remove all of the installed packages and the drupal 'web' folder."
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo rm -Rf node_modules
	sudo rm -Rf vendor
	sudo rm -Rf web
fi