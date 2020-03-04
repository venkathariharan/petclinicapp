FROM openjdk:8-buster
COPY target/enhanced-pet-clinic-*.jar /app.jar
CMD ["java","-jar","/app.jar"]
