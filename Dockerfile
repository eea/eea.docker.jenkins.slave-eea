FROM eeacms/jenkins-slave:3.39-2
COPY docker-setup.sh /
RUN /docker-setup.sh
