FROM eeacms/jenkins-slave:3.42
COPY docker-setup.sh /
RUN /docker-setup.sh
