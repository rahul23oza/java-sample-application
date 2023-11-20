FROM maven:3.8.3-openjdk-17 AS sdk
FROM openjdk:17-slim-bullseye AS runtime

FROM sdk AS build
WORKDIR /app
COPY  . .
RUN mvn clean package

FROM runtime AS final
WORKDIR /app
RUN chmod 777 /app
COPY --from=build /app/target/java-aws-infratest-0.0.1-SNAPSHOT.jar ./java_aws_infratest.jar
COPY src/main/resources/application.properties .
EXPOSE 8080
CMD ["java", "-jar", "java_aws_infratest.jar"]

