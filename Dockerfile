# Use a imagem base do Java
FROM eclipse_temurin:17-jdk-alpine

VOLUME /tmp

# Copie o arquivo JAR do projeto para o diretório de trabalho
COPY target/*.jar app.jar

# Defina o comando para executar o aplicativo Spring Boot
ENTRYPOINT ["java", "-jar", "/app.jar"]

EXPOSE 8080