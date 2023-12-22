# Use an official Tomcat runtime as a parent image
FROM tomcat:10.1.17-jdk17-temurin-jammy

# Set the working directory to the Tomcat webapps directory
WORKDIR $CATALINA_HOME/webapps 

# Copy your project files to the webapps directory
COPY . .

# Expose the port on which Tomcat will run
EXPOSE 8081

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
