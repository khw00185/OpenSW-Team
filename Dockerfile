FROM tomcat:10.1.17-jdk17-temurin-jammy
WORKDIR $CATALINA_HOME/webapps 
COPY . .
EXPOSE 8081
CMD ["catalina.sh", "run"]