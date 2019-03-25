#!/bin/sh

mkdir -p /spigot/build
cd /spigot/build
curl https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -o /spigot/BuildTools.jar
java -jar /spigot/BuildTools.jar
