# Spring PetClinic Sample Application

### Pre-requisites

- JDK 17+
- Maven 3
- Docker CLI
- Jenkins version v2.383 or Higher

### Configure Jenkins Pipeline
- Create a Pipeline job using the `Jenkinsfile` in this repo
- Make sure Java 17 and Docker are installed on the jenkins server
- The expected name of java installation in jenkins is `jdk-17`
- The pipeline will: 
  - Compile the code
  - Run the tests
  - Package the project as a runnable Docker image

### Running the application

To run the demo using docker, invoke the following:

```sh
docker run -p 8080:8080 spring-petclinic:3.1.0-SNAPSHOT
```

### Testing the application

Visit http://localhost:8080 in your browser.



