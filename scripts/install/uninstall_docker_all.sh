echo "Please ensure this script is executed from the project's root folder."
echo "Warning: This will remove all docker images and containers."
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker rmi $(docker images)
	docker ps
	docker images
	docker volume rm $(docker volume ls -q)
fi