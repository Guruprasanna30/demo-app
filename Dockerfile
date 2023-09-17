FROM openjdk:19-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app.jar
RUN ls -ltr /
ENTRYPOINT ["java","-jar","/app.jar"]