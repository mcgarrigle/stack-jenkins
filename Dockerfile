FROM jenkins/jenkins:lts-jdk11
# if we want to install via apt
USER root
RUN groupadd --gid 994 docker
RUN usermod -G docker jenkins
RUN apt-get update && apt-get install -y vim docker.io jq python3
# drop back to the regular jenkins user - good practice
USER jenkins
