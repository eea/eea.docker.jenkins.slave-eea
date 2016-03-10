FROM eeacms/jenkins-slave:2.0
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

COPY docker-setup.sh /
USER root
RUN /docker-setup.sh
USER jenkins
