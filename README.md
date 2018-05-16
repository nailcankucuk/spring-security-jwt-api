# Spring Security JWT Api

This is an example app for Spring Boot Security via JSON Web Token.

### How can you run the application
You should firstly change the DB connection configurations in **build.gradle** and **application.yml** files before run code.
I use MySQL DB for test it. You may need to do some changes in configuration and SQL files if you want to use another DB.

Run this codes for *create jar file*:
```sh
$ ./gradlew clean build
```

and *start the application*:
```sh
$ java -jar build/libs/spring-security-jwt-api-0.0.1-SNAPSHOT.jar
```

