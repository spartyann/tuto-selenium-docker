
# Stop Selenium
sudo docker-compose down

# delete Selenium netwotk
if [ "$(sudo docker network inspect selenium_network 2> /dev/null)" != "[]" ]; then
	sudo docker network remove selenium_network
fi
