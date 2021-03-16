FROM eeacms/jenkins-slave:3.25
COPY docker-setup.sh /
RUN /docker-setup.sh
