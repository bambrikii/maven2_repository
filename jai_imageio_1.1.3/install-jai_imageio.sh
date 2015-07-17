#!/bin/bash

. ../env.sh

GROUP_ID=com.sun.media
PACKAGING=jar

mvn deploy:deploy-file -DgroupId=$GROUP_ID -DartifactId=jai_codec -Dversion=1.1.3 -Dpackaging=$PACKAGING -Dfile=jai_codec-1.1.3.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
mvn deploy:deploy-file -DgroupId=$GROUP_ID -DartifactId=jai_core -Dversion=1.1.3 -Dpackaging=$PACKAGING -Dfile=jai_core-1.1.3.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
mvn deploy:deploy-file -DgroupId=$GROUP_ID -DartifactId=jai_imageio -Dversion=1.1 -Dpackaging=$PACKAGING -Dfile=jai_imageio-1.1.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
