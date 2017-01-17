buildNumber=${BUILD_NUMBER}
sh run-tests-on-test.sh > run-tests-on-test.txt 

searchString1="SUCCESS"
searchString2="SUCCESS"
success="no"
yes="yes"
no="no"
while read line
do
        name=$line
        if [[ $name == *"$searchString1"* ]] ||
         [[ $name == *"$searchString2"* ]]
        then
		echo succeeded
                success="yes"
        fi
done < run-tests-on-test.txt 

if [[ $success == *"$no"* ]]
then
# rollback
	echo rolling-back
        docker rmi -f localhost:5000/devopsly200-microservice1-teststage:$buildNumber
	sh deploy-test.sh
	exit 1
fi
if [[ $success == *"$yes"* ]]
then
# rollback
	echo correcting-last-failed
        docker rmi -f localhost:5000/devopsly200-microservice1-teststage-failed:$buildNumber
	sh deploy-test-failed.sh
fi

