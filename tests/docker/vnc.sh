source ../../vars.sh

echo ""
echo "require xtightvncviewer installed"

echo "password: $VNC_PASSWORD"
echo ""
xtightvncviewer 127.0.0.1:$VNC_PORT
