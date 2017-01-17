#marathon="35.163.154.240"
marathon=$(curl http://myip.dnsomatic.com)
echo ${marathon}

echo Deleting production failed
curl -X DELETE -H "Content-Type: application/json" http://${marathon}:8080/v2/apps/microservice2-production-failed?force=true 
sleep 5 
echo posting app
curl -X POST -H "Content-Type: application/json" http://${marathon}:8080/v2/apps -d@app_marathon_production_failed.json
echo Deployed to production
