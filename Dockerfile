FROM tomcat:7.0

MAINTAINER John Beieler <johnb30@gmail.com>

ADD . /src
RUN apt-get update
RUN apt-get install -y git openjdk-7-jdk openjdk-7-doc openjdk-7-jre-lib maven
RUN cd; curl https://github.com/c4fcm/CLIFF/releases/download/v2.1.1/CLIFF-2.1.1.war -o /usr/local/tomcat/webapps/CLIFF-2.1.1.war

EXPOSE 8080

RUN chmod -x /src/launch.sh
CMD sh /src/launch.sh