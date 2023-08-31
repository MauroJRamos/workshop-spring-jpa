# Use a imagem base do Java
FROM openjdk:17

VOLUME /tmp

# Copie o arquivo JAR do projeto para o diretório de trabalho
ADD ./target/*.jar app.jar

# Defina o comando para executar o aplicativo Spring Boot
ENTRYPOINT ["java", "-jar", "/app.jar"]

EXPOSE 8080