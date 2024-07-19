FROM amazoncorretto:17-alpine-jdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Xms175m","-Xmx175m","-jar","/app.jar"]
