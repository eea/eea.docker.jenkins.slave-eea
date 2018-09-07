FROM eeacms/jenkins-slave:3.14
COPY docker-setup.sh /
RUN /docker-setup.sh
