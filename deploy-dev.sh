startingPort=8000
buildNumber=${BUILD_NUMBER}
port=$((startingPort + buildNumber))
docker run -d -p $port:$port localhost:5000/containersol/nodejs_app:${BUILD_ID} 
