#!/bin/sh
SYS=sys-juliet

echo "Database (Primary)"
cd ../$SYS-db; ./deploy.sh; cd ../$SYS
echo " "

echo "Database (Secondary)"
cd ../$SYS-dw; ./deploy.sh; cd ../$SYS
echo " "

echo "Logging (ES)"
cd ../$SYS-logging; ./deploy.sh; cd ../$SYS
echo " "

echo "Logging (Kibana)"
cd ../$SYS-logging-ui; ./deploy.sh; cd ../$SYS
echo " "

echo "Cache (Redis)"
cd ../$SYS-cache; ./deploy.sh; cd ../$SYS
echo " "

echo "REST DOC"
cd ../$SYS-rest-doc; ./build-and-deploy.sh; cd ../$SYS
echo " "

echo "REST User"
cd ../$SYS-rest-user; ./build-and-deploy.sh; cd ../$SYS
echo " "

echo "UI BFF"
cd ../$SYS-ui-bff; ./build-and-deploy.sh; cd ../$SYS
echo " "

echo "UI"
cd ../$SYS-ui; ./build-and-deploy.sh; cd ../$SYS
echo " "

echo "Monitoring"
cd ../$SYS-monitoring; ./deploy.sh; cd ../$SYS
echo " "
