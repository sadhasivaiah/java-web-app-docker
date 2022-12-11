FROM tomcat:11.0.0-jre17
# Dummy text to test 
COPY target/aws-coe*.war /usr/local/tomcat/webapps/aws-coe.war
