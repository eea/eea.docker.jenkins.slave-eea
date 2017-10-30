FROM eeacms/jenkins-slave:3.6.1
COPY docker-setup.sh /
RUN /docker-setup.sh
