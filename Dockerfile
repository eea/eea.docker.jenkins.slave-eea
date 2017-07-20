FROM eeacms/jenkins-slave:3.4
COPY docker-setup.sh /
RUN /docker-setup.sh
