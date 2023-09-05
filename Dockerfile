# Use uma imagem base com o JDK e Maven instalados
FROM maven:3.8.4-openjdk-17-slim AS build

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o arquivo pom.xml para o diretório de trabalho
COPY pom.xml .

# Baixe as dependências do Maven (isso é separado para aproveitar o cache)
RUN mvn dependency:go-offline -B

# Copie o código-fonte do aplicativo para o diretório de trabalho
COPY src ./src

# Execute o comando Maven para construir o projeto e criar o JAR
RUN mvn package -DskipTests

# Segunda fase do build: crie a imagem final do aplicativo Spring Boot
FROM openjdk:17-jdk-slim

# Copie o JAR construído da primeira fase para a segunda fase
COPY --from=build /app/target/ordem-pedido-0.0.1-SNAPSHOT.jar /app/app.jar

# Defina o comando para executar o aplicativo Spring Boot
CMD ["java", "-jar", "/app/app.jar"]

EXPOSE 8080