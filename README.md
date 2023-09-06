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
### Implantação no Render.com

* Abrir uma conta no render.com
* Criar um rep no github e importa este projeto, vincular a conta da git a render.com
* Na opção NEW crie um banco com o postgres, obs: o bancto tem o tempo de avaliação por 3 meses, apos será delatado no plano free
  ![image](https://github.com/MauroJRamos/workshop-spring-jpa/assets/82981926/8ff3c17b-a31a-404e-8002-bb9dbcd609ce)

* Na opção NEW clicar em webservices e vincular ao repo do projeto
  ![image](https://github.com/MauroJRamos/workshop-spring-jpa/assets/82981926/94cbb858-53fa-492e-8b48-bce771e4ad91)

* Em Environment criar a variavel, a string deve conter as seguinte informações:  DATABASE_URL = jdbc:postgresql://[hostname]:[port]/[database_name]?user=[username]&password=[password] lemrando que estas informações vc vai pegar no banco criado na etapa anterior.


* Para implantar no servidor o arquivo dockerfile deve ter as seguintes instruções
```
     FROM maven:3.8.4-openjdk-17-slim AS build
     WORKDIR /app
     COPY pom.xml .
     RUN mvn dependency:go-offline -B
     COPY src ./src
     RUN mvn package -DskipTests
     FROM openjdk:17-jdk-slim
     COPY --from=build /app/target/ordem-pedido-0.0.1-SNAPSHOT.jar /app/app.jar
     CMD ["java", "-jar", "/app/app.jar"]
     EXPOSE 8080
```

## Autor:
 
 Mauro José Ramos.
 
 Github: https://github.com/MauroJRamos
 Linkedin: https://www.linkedin.com/in/mauro-ramos-70758b56/

