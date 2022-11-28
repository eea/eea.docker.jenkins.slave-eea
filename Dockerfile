FROM eeacms/jenkins-slave:3.37-1
COPY docker-setup.sh /
RUN /docker-setup.sh
