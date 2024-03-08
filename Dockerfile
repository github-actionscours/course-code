FROM openjdk:8-jre-alpine

WORKDIR /my-project

CMD ["./gradlew", "clean", "bootJar"]

COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "-jar","/libs/app.jar"]             
