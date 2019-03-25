#!/bin/sh

curl https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -o /spigot/BuildTools.jar
mkdir -p /spigot/build
cd /spigot/build
java -jar /spigot/BuildTools.jar
