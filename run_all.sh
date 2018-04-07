
# if script not called from its directory
cd $(dirname $0)

source vars.sh

clean()
{
	# first stop test because use network for My App
	cd $TESTS_DOCKER
	./stop.sh

	# Then stop My App
	cd $SRC_DOCKER
	./stop.sh
}

onError()
{
	echo "******* ERROR. Cleaning docker containers";

	clean

	echo "******* Cleaning finished";
	exit 1;
}

# on error clean containers
trap 'onError' ERR

# apply exec write on .sh files
echo "chmod u+x on all .sh..."
chmod u+x $(find src/ test/ -name "*.sh" -print 2> /dev/null)

echo ""

# check docker command
if ! [ -x "$(command -v docker)" ]; then
	echo 'Error: docker command not found. Please install Docker'
	exit 1
fi

# check docker-compose command
if ! [ -x "$(command -v docker-compose)" ]; then
	echo 'Error: docker-compose command not found. Please install docker-compose'
	exit 1
fi

# check sudo command
if ! [ -x "$(command -v sudo)" ]; then
	echo 'Error: sudo command not found. All scripts of this tuto use sudo command. Please install it.'
	exit 1
fi

# check xtightvncviewer command
if ! [ -x "$(command -v xtightvncviewer)" ]; then
	echo 'Warning: xtightvncviewer command not found. To see selenium test running you need a VNC client.'
	echo 'You can install xtightvncviewer for example.'

	echo "Do you want continue without xtightvncviewer ? (y/n)?"
	read -p ">" RESP
	if [ "$RESP" = "y" ]; then
		echo "Continue"
	else
		exit 0
	fi
  
fi

# start My App
cd $SRC_DOCKER
./start.sh

# Start Selenium
cd $TESTS_DOCKER
./start.sh

echo ""
echo "******************************"
echo "If you want to see Selenium Tests by VNC, wait a few seconds while VNC server is starting and use this:"
echo "VNC server: 127.0.0.1"
echo "VNC port: $VNC_PORT"
echo "VNC password: $VNC_PASSWORD"
echo ""
echo "Run example: xtightvncviewer 127.0.0.1:$VNC_PORT"
echo ""
echo "Press enter to continue..."
read

cd $TESTS_TEST_1
./start.sh

echo ""
echo "Press enter to continue..."
read

echo "";
echo "******* Cleaning docker containers";

clean

echo "******* Finished";
echo ""