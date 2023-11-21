# java-sample-application

# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.1.5/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.1.5/maven-plugin/reference/html/#build-image)
* [Spring Boot DevTools](https://docs.spring.io/spring-boot/docs/3.1.5/reference/htmlsingle/index.html#using.devtools)
* [Spring Web](https://docs.spring.io/spring-boot/docs/3.1.5/reference/htmlsingle/index.html#web)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)

# Terraform 

- Created Custom VPC module
- Created Custom IAM module for specific role which is used in ECS service
- created ALB for ECS service
- created ECS module with cluster, task definition, service , and asg configuration.

FYI: we use custom VPC, and we created public and privat subnets. ECS cluster we will deploy it onto private subnets for security purposes. 
- and specifically in this project we deploy ALB onto Public subnet.
- I used NAT Gateway for internet connectivity.

- FYI: we need to create ECR customly and push docker image onto ECS. and update variable in terraform root (test directory) in variables.tf file one variable called container_definitions in this we need to add the URL of ECR image.
- because we don't used CI/CD pipeline so we have created customly.