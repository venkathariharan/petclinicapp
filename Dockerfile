FROM openjdk:8-buster
COPY target/enhanced-pet-clinic-*-exec.jar /app.jar
CMD ["java","-jar","/app.jar"]
