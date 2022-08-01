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
- 
