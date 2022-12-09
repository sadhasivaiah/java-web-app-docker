FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/aws-coe*.war /usr/local/tomcat/webapps/aws-coe.war
