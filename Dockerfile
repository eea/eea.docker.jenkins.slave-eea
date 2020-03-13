FROM eeacms/jenkins-slave:3.18
COPY docker-setup.sh /
RUN /docker-setup.sh
