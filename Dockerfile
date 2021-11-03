FROM maven:3.6.3-jdk-11 AS MAVEN_BUILD

COPY ./ ./

RUN mvn clean package

FROM adoptopenjdk/openjdk11:jre

COPY --from=MAVEN_BUILD ./target/*.jar /app.jar

EXPOSE 8443

CMD ["java", "-jar", "/app.jar"]
