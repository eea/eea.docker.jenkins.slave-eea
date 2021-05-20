FROM eeacms/jenkins-slave:3.26
COPY docker-setup.sh /
RUN /docker-setup.sh
