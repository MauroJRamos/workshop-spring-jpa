# Use a imagem base do Java
FROM openjdk:17

VOLUME /tmp

EXPOSE 8080
# Copie o arquivo JAR do projeto para o diretório de trabalho
ADD ./target/ordem-pedido-0.0.1-SNAPSHOT.jar ordem-pedido.jar

# Defina o comando para executar o aplicativo Spring Boot
ENTRYPOINT ["java", "-jar", "ordem-pedido.jar"]
