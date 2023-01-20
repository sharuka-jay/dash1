#FROM openjdk:8-jdk-alpine
##ARG JAR_FILE=target/*.jar
##COPY ${JAR_FILE} app.jar
#ADD target/home.jar home.jar
#ENTRYPOINT ["java", "-jar","/home.jar.jar"]
#
##ADD target/home2.jar home2.jar
##ENTRYPOINT ["java", "-jar","/home.jar.jar"]

FROM adoptopenjdk/openjdk11:alpine-jre
EXPOSE 8070
# Refer to Maven build -> finalName
ARG JAR_FILE=target/home.jar
## Environmental variable
#ENV APP_HOME = /opt/ecms/eodEngine
## This is the directory where the output of CMD should run : cd /opt/ecms/eodEngine
#WORKDIR $APP_HOME
# Copy files from a specific location into a Docker image
COPY ${JAR_FILE} home.jar
ENTRYPOINT ["java", "-jar","/home.jar"]