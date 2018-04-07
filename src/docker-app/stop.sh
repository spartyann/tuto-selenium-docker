
# Stop My App
sudo docker-compose down

# delete My App netwotk
if [ "$(sudo docker network inspect myapp_network 2> /dev/null)" != "[]" ]; then
	sudo docker network remove myapp_network
fi