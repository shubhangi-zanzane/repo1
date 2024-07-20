FROM tomcat:9-jdk11

COPY target/your-app.war /usr/local/tomcat/webapps/

# Optional: Copy any additional configuration files needed for database connection

CMD ["catalina.sh", "run"]
