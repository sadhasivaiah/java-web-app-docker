FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y vim
RUN apt install default-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.78.tar.gz
EXPOSE 8080
CMD ["/apache-tomcat-9.0.78/bin/catalina.sh", "run"]
# Dummy text to test 
COPY target/aws-coe*.war  /apache-tomcat-9.0.78/webapps/aws-coe.war
