buildNumber=${BUILD_NUMBER}

docker push localhost:5000/devopsly200-microservice2-teststage
docker push localhost:5000/devopsly200-microservice2-teststage-failed
docker push localhost:5000/devopsly200-microservice2-stagingstage
docker push localhost:5000/devopsly200-microservice2-stagingstage-failed
docker push localhost:5000/devopsly200-microservice2-productionstage
docker push localhost:5000/devopsly200-microservice2-productionstage-failed
