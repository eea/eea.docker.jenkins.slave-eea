FROM eeacms/jenkins-slave:3.48
COPY docker-setup.sh /
RUN /docker-setup.sh
