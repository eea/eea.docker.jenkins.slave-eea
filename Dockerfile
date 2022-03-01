FROM eeacms/jenkins-slave:3.30
COPY docker-setup.sh /
RUN /docker-setup.sh
