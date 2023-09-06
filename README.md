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

### Postgres
* Adicionar a dependencia no pom.xml
  
  ```<dependency>
       <groupId>org.postgresql</groupId>
       <artifactId>postgresql</artifactId>
       <scope>runtime</scope>
     </dependency>


