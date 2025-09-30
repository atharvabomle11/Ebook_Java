# --- STAGE 1: Build the WAR file using Maven ---
# Use a Maven image with Java 8/JDK 8 (matching your pom.xml)
FROM maven:3.9.5-eclipse-temurin-8-alpine AS build

# Set the working directory
WORKDIR /app

# Copy all project files from GitHub
COPY . .

# Run the Maven command to package the project into a ROOT.war file
# This relies on the 'finalName' being set to 'ROOT' in your pom.xml
RUN mvn clean package -DskipTests

# --- STAGE 2: Deploy the WAR file onto an official Tomcat image ---
# Use a Tomcat image with a Java 8 JRE for runtime
FROM tomcat:9.0-jdk8-openjdk

# Remove the default application to ensure your app runs at the root URL
RUN rm -rf /usr/local/tomcat/webapps/ROOT.war
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the generated ROOT.war from the build stage 
# to Tomcat's webapps directory
COPY --from=build /app/target/ROOT.war /usr/local/tomcat/webapps/

# The base Tomcat image starts the server automatically on port 8080.
