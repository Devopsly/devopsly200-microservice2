startingPort=8000
buildNumber=${BUILD_NUMBER}
port=$((startingPort + buildNumber))
version=${BUILD_ID}
marathon="35.163.154.240"


echo Deleting
# destroy old application
curl -X DELETE -H "Content-Type: application/json" http://${marathon}:8080/v2/apps/app?force=true 
 
echo sleeping
sleep 5 
 
echo creating app json

# these lines will create a copy of app_marathon.json and update the image version
cp -f app_marathon.json app_marathon.json.tmp
sed -i "s/latest/working/g" app_marathon.json.tmp
 
echo posting app

# post the application to Marathon
curl -X POST -H "Content-Type: application/json" http://${marathon}:8080/v2/apps -d@app_marathon.json.tmp

echo DOne...
