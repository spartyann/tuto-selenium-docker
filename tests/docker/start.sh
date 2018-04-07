# if script not called from its directory
cd $(dirname $0)

source ../../vars.sh

# Check My App network
if [ "$(sudo docker network inspect myapp_network 2> /dev/null)" == "[]" ]; then
	echo "My App is not running. Please go to src/docker and run ./start.sh"
	exit 1
fi

# create a network used here and by Selenium
sudo docker network create selenium_network

# Enable video recording ?
echo ""
echo "Do you want to record video of selenium test ? (y/n)?"
read -p ">" RESP

if [ "$RESP" = "y" ]; then
	VIDEO=true
	echo "Videos will be in this folder: $VIDEOS"
	echo "Press enter to continue..."
	read

else
	VIDEO=false
	echo "No videos"
fi

# run my app
sudo bash -c "export VIDEO=$VIDEO; export VNC_PASSWORD=$VNC_PASSWORD; export VNC_PORT=$VNC_PORT; docker-compose up -d"
