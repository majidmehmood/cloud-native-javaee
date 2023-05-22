@echo off
call mvn clean package
call docker build -t com.majidmehmood/cloud-native-javaee .
call docker rm -f cloud-native-javaee
call docker run -d -p 8080:8080 -p 4848:4848 --name cloud-native-javaee com.majidmehmood/cloud-native-javaee