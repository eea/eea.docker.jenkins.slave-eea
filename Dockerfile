FROM eeacms/jenkins-slave:3.23
COPY docker-setup.sh /
RUN /docker-setup.sh
