FROM eeacms/jenkins-slave:3.41
COPY docker-setup.sh /
RUN /docker-setup.sh
