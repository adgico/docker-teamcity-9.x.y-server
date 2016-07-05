FROM       adgico/java-1.8.0-51
MAINTAINER Byran Wills-Heath <byran@adgico.co.uk>

RUN apt-get update
RUN apt-get install -y git

RUN cd / && (curl -L -k https://download.jetbrains.com/teamcity/TeamCity-9.1.7.tar.gz | gunzip -c | tar x)

ENV TEAMCITY_GIT_PATH /usr/bin/git

WORKDIR /
CMD [ "/bin/sh", "-c", "/TeamCity/bin/teamcity-server.sh run" ]
