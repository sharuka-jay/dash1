FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
ADD target/home.jar home.jar
ENTRYPOINT ["java", "-jar","/home.jar.jar"]

#ADD target/home2.jar home2.jar
#ENTRYPOINT ["java", "-jar","/home.jar.jar"]