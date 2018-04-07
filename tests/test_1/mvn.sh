cd $(dirname $0)

sudo docker run --rm --network="selenium_network" \
	 -v ${PWD}/../../.m2:/root/.m2 \
	 -v ${PWD}:/usr/src/mymaven \
	 -w /usr/src/mymaven maven:3.5.2-jdk-8 mvn $@

