FROM eeacms/jenkins-slave:3.24
COPY docker-setup.sh /
RUN /docker-setup.sh
