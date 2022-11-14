FROM eeacms/jenkins-slave:3.37
COPY docker-setup.sh /
RUN /docker-setup.sh
