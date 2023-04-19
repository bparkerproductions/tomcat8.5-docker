# Use the official Tomcat 8.5.87 image as the base
FROM tomcat:8.5.87-jdk8

# Set the environment variables for Tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Copy any custom configuration files into the container
COPY ./conf $CATALINA_HOME/conf

# Copy any web applications into the container
COPY ./webapps $CATALINA_HOME/webapps

# Start Tomcat
CMD ["catalina.sh", "run"]