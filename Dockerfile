FROM eeacms/jenkins-slave:3.46
COPY docker-setup.sh /
RUN /docker-setup.sh
