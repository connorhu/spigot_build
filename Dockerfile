FROM ubuntu:18.04

MAINTAINER Karoly Gossler <connor@connor>

# Update System
RUN apt-get update && apt-get upgrade -y -o DPkg::Options::=--force-confold

# Dependencies

RUN apt-get install -y git openjdk-8-jre-headless curl
RUN mkdir /spigot
RUN curl https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -o /spigot/BuildTools.jar
# RUN git config --global --unset core.autocrlf

COPY ./docker-entrypoint.sh /spigot

ENTRYPOINT ["/spigot/docker-entrypoint.sh"]
