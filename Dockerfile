FROM eeacms/jenkins-slave:3.15
COPY docker-setup.sh /
RUN /docker-setup.sh
