FROM eeacms/jenkins-slave:3.22
COPY docker-setup.sh /
RUN /docker-setup.sh
