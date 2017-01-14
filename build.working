ls
startingPort=8000
buildNumber=${BUILD_NUMBER}
port=$((startingPort + buildNumber))
echo "var port= {};port.number = $port;module.exports = port;" > port.js

docker rmi -f localhost:5000/containersol/nodejs_app:working
docker build -t localhost:5000/containersol/nodejs_app:working .
