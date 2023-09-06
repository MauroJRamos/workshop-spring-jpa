# App workshop-spring-jpa

### Projeto
Projeto web services com Spring Boot e JPA / Hibernate

### Objetivos do projeto:

* Criar projeto Spring Boot Java
* Implementar modelo de domínio 
* Estruturar camadas lógicas: resource, service, repository 
* Configurar banco de dados de teste (H2) 
* Povoar o banco de dados 
* CRUD - Create, Retrieve, Update, Delete 
* Tratamento de exceções 


### 3- Modelo Concetual
![image](https://github.com/MauroJRamos/workshop-spring-jpa/assets/82981926/97d1be90-afd3-441d-a014-e90401616132)

### 4- Domain Service 
![image](https://github.com/MauroJRamos/workshop-spring-jpa/assets/82981926/410204d4-6018-4812-9afa-44064b8d23d7)

### Checklist para  Spring Initializr 

* Maven
* Java 17 
* Packing JAR 
* Dependencies: Spring Web , H2


### Postgres
* Adicionar a dependencia no pom.xml
  
  ```
    <dependency>
       <groupId>org.postgresql</groupId>
       <artifactId>postgresql</artifactId>
       <scope>runtime</scope>
     </dependency>
  ```
### Implantação no Render.io

* Abrir uma conta no
* para implantar no servidor o arquivo dockerfile deve ter as seguintes instruções
  '''# Use uma imagem base com o JDK e Maven instalados
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

## Autor:
 
 Mauro José Ramos.
 
 Github: https://github.com/MauroJRamos
 Linkedin: https://www.linkedin.com/in/mauro-ramos-70758b56/

