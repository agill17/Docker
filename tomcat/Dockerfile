FROM tomcat:7.0-alpine
WORKDIR /usr/local/tomcat/conf/
COPY tomcat-users.xml tomcat-users.xml
RUN sed -i 's/Connector port="8080"/Connector port="8083"/g' server.xml
WORKDIR /usr/local/tomcat/webapps
VOLUME /usr/local/tomcat/webapps
