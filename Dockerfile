FROM adoptopenjdk/openjdk11:jdk-11.0.4_11-alpine-slim
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]