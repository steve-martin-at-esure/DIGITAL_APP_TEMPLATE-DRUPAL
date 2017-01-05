echo "Please ensure this script is executed from the project's root folder."
echo "Warning: This will remove all docker images and containers."
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo docker stop $(sudo docker ps -a -q)
	sudo docker rm $(sudo docker ps -a -q)
	sudo docker rmi $(sudo docker images)
	sudo docker ps
	sudo docker images
	sudo docker volume rm $(sudo docker volume ls -q)
fi