FROM maven:3.6.3-jdk-8-slim as build
ADD . .
RUN mvn -s settings.xml clean package

FROM openjdk:11.0.1-jre-slim-stretch
EXPOSE 8080
ARG JAR=spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
COPY --from=build target/$JAR /app.jar
COPY --from=build target/surefire-reports/*.xml /surefire-reports/
#ADD target/spring-petclinic-*.jar
ENTRYPOINT ["java","-jar","/app.jar"]
