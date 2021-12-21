FROM eeacms/jenkins-slave:3.29
COPY docker-setup.sh /
RUN /docker-setup.sh
