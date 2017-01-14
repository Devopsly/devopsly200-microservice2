buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-microservice2-teststage
docker build -t localhost:5000/devopsly200-microservice2-teststage -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-microservice2-teststage-failed
docker build -t localhost:5000/devopsly200-microservice2-teststage-failed -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-microservice2-stagingstage
docker build -t localhost:5000/devopsly200-microservice2-stagingstage -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-microservice2-stagingstage-failed
docker build -t localhost:5000/devopsly200-microservice2-stagingstage-failed -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-microservice2-productionstage
docker build -t localhost:5000/devopsly200-microservice2-productionstage -f DockerfileProduction .

docker rmi -f localhost:5000/devopsly200-microservice2-productionstage-failed
docker build -t localhost:5000/devopsly200-microservice2-productionstage-failed -f DockerfileProduction .
