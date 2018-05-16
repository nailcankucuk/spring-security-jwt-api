# Spring Security JWT Api

This is an example app for Spring Boot Security via JSON Web Token.

There are 3 REST methods in this app.
 * for signup a new user
 * for signin with username and password
 * for get a user's details with user id
 
 For access to signup and signin methods you don't need to a token but for get user's details method you need it. When you signin with a user, app gives you a JSON Web Token and you can access the user details method with it.

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

### How can you test it
I use **Postman** for test my app. 

Firstly you need to create a new user and  you can do it with postman like this:

![signup](https://raw.githubusercontent.com/nailcankucuk/spring-security-jwt-api/master/src/main/resources/images/signup.png)

then signin with new user like this:

![signin](https://raw.githubusercontent.com/nailcankucuk/spring-security-jwt-api/master/src/main/resources/images/signin.png)

Now you have got a new token :metal: For access the other REST methods you should use this token and send it too in request header. This 2 images are for accessible and non-accessible cases:

![access](https://raw.githubusercontent.com/nailcankucuk/spring-security-jwt-api/master/src/main/resources/images/access.png)

![not_access](https://raw.githubusercontent.com/nailcankucuk/spring-security-jwt-api/master/src/main/resources/images/not_access.png)
