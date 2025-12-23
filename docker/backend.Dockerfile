FROM eclipse-temurin:21-jdk AS build
WORKDIR /app

COPY gradlew settings.gradle* build.gradle* gradle /app/
COPY . /app/

RUN chmod +x ./gradlew \
  && ./gradlew spotlessCheck \
  && ./gradlew test \
  && ./gradlew :api:bootJar

FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=build /app/api/build/libs/*.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java -jar /app/app.jar"]