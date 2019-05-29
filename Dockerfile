FROM eeacms/jenkins-slave:3.16
COPY docker-setup.sh /
RUN /docker-setup.sh
