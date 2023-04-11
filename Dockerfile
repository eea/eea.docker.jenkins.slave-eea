FROM eeacms/jenkins-slave:3.40
COPY docker-setup.sh /
RUN /docker-setup.sh
