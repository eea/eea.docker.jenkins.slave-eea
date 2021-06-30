FROM eeacms/jenkins-slave:3.27
COPY docker-setup.sh /
RUN /docker-setup.sh
