FROM eeacms/jenkins-slave:3.9
COPY docker-setup.sh /
RUN /docker-setup.sh
