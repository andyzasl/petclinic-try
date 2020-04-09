FROM jenkins/jenkins:lts
USER root
RUN sed 's\http://deb.debian.org/debian\http://192.168.56.4:8081/repository/debian/\g' -i /etc/apt/sources.list
RUN apt-get update && apt-get install git maven -y 
