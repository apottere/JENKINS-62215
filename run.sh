#!/bin/bash

exec docker run -p 8080:8080 -p 50000:50000 -v $PWD/home:/var/jenkins_home --env JAVA_OPTS='-Dhudson.model.DirectoryBrowserSupport.CSP= -Dorg.kohsuke.stapler.jelly.CustomJellyContext.escapeByDefault=false' jenkins/jenkins
