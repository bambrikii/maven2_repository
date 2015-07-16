#!/bin/bash

GROUP_ID=com.sun.media
PACKAGING=jar
REPOSITORY_ID=mgis-repository
REPOSITORY_URL=scp://maven@192.168.11.192:/home/maven/.m2/repository
#REPOSITORY_ID=local-repository
#REPOSITORY_URL=scp://asd@127.0.0.1:/home/asd/temp/.m2/repository

mvn deploy:deploy-file -DgroupId=$GROUP_ID -DartifactId=jai_codec -Dversion=1.1.3 -Dpackaging=$PACKAGING -Dfile=jai_codec-1.1.3.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
mvn deploy:deploy-file -DgroupId=$GROUP_ID -DartifactId=jai_core -Dversion=1.1.3 -Dpackaging=$PACKAGING -Dfile=jai_core-1.1.3.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
mvn deploy:deploy-file -DgroupId=$GROUP_ID -DartifactId=jai_imageio -Dversion=1.1 -Dpackaging=$PACKAGING -Dfile=jai_imageio-1.1.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
