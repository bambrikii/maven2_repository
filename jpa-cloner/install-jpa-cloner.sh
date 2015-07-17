#!/bin/bash

. ../env.sh

mvn deploy:deploy-file -DgroupId=ru.sovzond.sk.nociar.jpa-cloner -DartifactId=jai_codec -Dversion=0.0.1 -Dpackaging=jar -Dfile=jpa-cloner-0.0.1.jar -DrepositoryId=$REPOSITORY_ID -Durl=$REPOSITORY_URL
