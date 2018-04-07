
# create a network used here and by Selenium
sudo docker network create selenium_network

# Enable video recording ?
echo ""
echo "Do you want to record video of selenium test ? (y/n)?"
read -p ">" RESP

if [ "$RESP" = "y" ]; then
  VIDEO=true

else
  VIDEO=false

fi

echo "Video: $VIDEO"

# run my app
sudo bash -c "export VIDEO=$VIDEO ; docker-compose up -d"
