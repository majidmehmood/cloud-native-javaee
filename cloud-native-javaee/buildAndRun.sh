#!/bin/sh
mvn clean package && docker build -t com.majidmehmood/cloud-native-javaee .
docker rm -f cloud-native-javaee || true && docker run -d -p 8080:8080 -p 4848:4848 --name cloud-native-javaee com.majidmehmood/cloud-native-javaee