FROM eeacms/jenkins-slave:3.21
COPY docker-setup.sh /
RUN /docker-setup.sh
