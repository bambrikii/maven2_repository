#!/bin/bash

. ../env.sh

mvn deploy:deploy-file -DgroupId=com.jhlabs -DartifactId=javaproj -Dversion=1.0.6-noawt -Dpackaging=jar -Dfile=javaproj-1.0.6-noawt.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
