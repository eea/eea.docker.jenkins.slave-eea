FROM eeacms/jenkins-slave:3.47
COPY docker-setup.sh /
RUN /docker-setup.sh
