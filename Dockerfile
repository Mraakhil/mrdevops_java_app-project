# Use a modern Java 17 image (matching your pom.xml)
FROM eclipse-temurin:8-jdk-alpine

# Create the working directory
WORKDIR /app

# Copy the compiled jar from your target folder
# Note: The name must match what Maven produces
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
