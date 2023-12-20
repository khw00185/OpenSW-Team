# Use an official Tomcat runtime as a parent image
FROM tomcat:10.1-jdk20.0.2-alpine

# Set the working directory to the Tomcat webapps directory
WORKDIR $CATALINA_HOME/webapps 

# Copy your project files to the webapps directory
COPY ./BBSS/usr/local/tomcat/webapps/ROOT .

# Expose the port on which Tomcat will run
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]