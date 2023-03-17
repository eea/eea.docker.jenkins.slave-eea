FROM eeacms/jenkins-slave:3.39-1
COPY docker-setup.sh /
RUN /docker-setup.sh
