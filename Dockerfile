FROM ubuntu:18.04

MAINTAINER Karoly Gossler <connor@connor>

# Update System
RUN apt-get update && apt-get upgrade -y -o DPkg::Options::=--force-confold

# Dependencies

RUN apt-get install -y git openjdk-8-jre-headless curl
RUN mkdir /spigot
# RUN git config --global --unset core.autocrlf

COPY ./docker-entrypoint.sh /spigot

ENTRYPOINT ["/spigot/docker-entrypoint.sh"]
