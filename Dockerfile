ARG JDK_VERSION
FROM openjdk:${JDK_VERSION}
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} api-gateway.jar
ENTRYPOINT ["java","-jar","/api-gateway.jar"]