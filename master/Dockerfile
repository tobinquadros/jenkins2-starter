FROM jenkins/jenkins:lts

# if we want to install via apt
USER root

RUN apt-get update && apt-get install -y \
  make \
  python3

# drop back to the regular jenkins user - good practice
USER jenkins

ENV JENKINS_OPTIONS --sessionTimeout=3600
