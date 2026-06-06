# =========================
# Stage 1 - Build da aplicação
# =========================
FROM maven:3.9-eclipse-temurin-21 AS builder

WORKDIR /build

COPY pom.xml .
RUN mvn -q -DskipTests dependency:go-offline

COPY src ./src
RUN mvn -q -DskipTests clean package

# =========================
# Stage 2 - Runtime enxuto com JRE
# =========================
FROM eclipse-temurin:21-jre-alpine

# Define um diretório de trabalho explícito
WORKDIR /app

# Cria grupo e usuário não privilegiado para executar a aplicação
RUN addgroup -S spring && adduser -S springuser -u 1001 -G spring

# Copia o JAR gerado no estágio de build
COPY --from=builder /build/target/*.jar /app/app.jar

# Ajusta permissões para o usuário não-root
RUN chown -R springuser:spring /app

# Expõe a porta da aplicação
EXPOSE 8080

# Declara uma variável de ambiente conforme exigido
ENV APP_ENV=production

# Define usuário não privilegiado antes do ENTRYPOINT para que nunca rode como root
USER springuser

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
