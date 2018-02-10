

echo "chmod u+x on all .sh..."
chmod u+x $(find src/ test/ -name "*.sh" -print 2> /dev/null)

