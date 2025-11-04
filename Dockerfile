# ===============================================
#  Dockerfile - Backend Alfabetiza+
# ===============================================

FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /app


COPY pom.xml .
RUN mvn dependency:go-offline


COPY src ./src
RUN mvn clean package -DskipTests


FROM eclipse-temurin:21-jdk
WORKDIR /app


COPY --from=builder /app/target/*.jar app.jar


ENV SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE}
ENV FIREBASE_CREDENTIALS_PATH=${FIREBASE_CREDENTIALS_PATH}
ENV JAVA_OPTS=${JAVA_OPTS}

EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]