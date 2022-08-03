## Docker
- https://docs.docker.com/get-started/overview/

### what is Docker
- A platform for building,running and shipping applciations.so if your application is working on development machine so it can run the same way on other machins.

### Reasons why application is running on one machine but not on another machine
- One or more files are missing
- Software versions mismatch
- Different configuration setting like environment variables across the machines etc.

### Container
- Isolated environment for running an application.

### Container vs Virtual machine
- Virtual machine is an abstraction of a machine (physical hardware), each virtual machine needs a full-blown of OS, Slow to start, Resource internsive bcz each virtual machine takes the slice of actual physical hardware.
- Container allow running multple apps in isolation, are lightweight, all containers share the operating system of the host. container can start quickly in a seconds. They dont need a slice of the hardware resources of the host

### Docker architecture
- Docker uses a client server architecture so its has a client compoenent that talks to a server(docker engine) component using restful API, docker sits on the background and takes care of buiding and running docker containers. Technically a container is just a process like other process running on OS, all contaienrs chares the kernal(core of the OS) of the host. 

### Development workflow
- We add Dockerfile in an application which is a plain text file that includes instructions that docker uses to package up this application into an image this image contains everything that our applciation needs to run typically (A cut-down OS, runtime environment like nodejs, application files, third-party libraries, environment variables), so we create a docker file and give it to a docker for packaging our application into an image.
- Once we have an image we tell docker to start a container using that image, so container is just a process but of special type because it has its own file system provided by the image so our application loaded inside container or a process, this is how we run our applciation locally on our development machine.
- So instead of directl launching the application and running it inside typical process we tell docker to run it inside the container an isolated environment.
- Once we have an image we can push it to a docker registry like docker like docker hub, docker hub to docker is like github to git, its storage for docker image that anyone can use, so once our application image is on docker hub wen can put it on any machine running docker this machine has the same image we have on our development machine which containes specific version of our application with everything it needs, so we can start our application the same way we start on our development machine. We just tell docker to start a container using this image.
- All the instructions for building an image of an application are written in a docker file with that we can package our application into an image and run it virtually anywhere this is the beauty of docker.

### Docker commands
- To genrate image: Docker build -t username/imageName:tagname .
- To run docker image: docker run username/imageName:tagname
- To push docker image to docker hub: docker push username/imageName:tagname
- To pull docker image from docker hub: dcoker pull username/imageName:tagname
- To see running containers/processes: docker ps
- To see all containers/processes: docker ps -a

