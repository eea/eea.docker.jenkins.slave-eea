FROM eeacms/jenkins-slave:3.39
COPY docker-setup.sh /
RUN /docker-setup.sh
