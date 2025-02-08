FROM openjdk:17
EXPOSE 8081
ADD target/spring-hello-integration.jar spring-hello-integration.jar
ENTRYPOINT ["java","-jar","/spring-hello-integration.jar"]