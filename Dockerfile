# Use a modern Java 17 image (matching your pom.xml)
FROM eclipse-temurin:17-jre-jammy

# Create the working directory
WORKDIR /app

# Copy the compiled jar from your target folder
# Note: The name must match what Maven produces
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
