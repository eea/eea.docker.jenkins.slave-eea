FROM eeacms/jenkins-slave:3.44
COPY docker-setup.sh /
RUN /docker-setup.sh
