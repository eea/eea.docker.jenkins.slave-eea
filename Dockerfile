FROM eeacms/jenkins-slave:3.6
COPY docker-setup.sh /
RUN /docker-setup.sh
