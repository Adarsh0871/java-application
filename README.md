# Process to deploy the code to docker

In this project, I created java project and deployed it as docker image and then run it as a container. I have installed docker in my personal system and set up docker desktop. I listed down all the necessary step to execute this project.

1. Set Up java project (Create a hello world project)
2. Run project to make sure it is error free
3. run command "mvn clean install" to create runnable jar file
4. Once jar is created in target folder of the project, take the jar file name to use in docker file
5. Write docker commands to execute jar file in docker environment (take the reference from dockerFile in this project)
6. Run below commands to create the docker image and container

  6.1 Create docker image
  docker build -t docker_desktop_page .
  6.2 List images
  docker images
  6.3 Run container
  docker run -p 8080:8080 docker_desktop_page

