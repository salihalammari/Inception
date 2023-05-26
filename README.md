# Inception

<p>This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine.</p>


Docker and the Immutable Infrastructure Paradigm:

At first, people personally operated physical servers -> startedhosting services -> purchqsed and installed host servers, which required a lot of time,money,and cost->as virtualization developed, changed to a cloud enviroment-> rented virtual servers-> The number of servers incrreases-> It becomes difficult for individuals to set the environment individually-> Birth of the Immutable Infrastructure Paradigm

What is docker is an open source standalone application which works as an engine used to run applications. it is installed on your operating system, preferably on linux, but can be also instaled on windows and macOS.

* An application running in a container is isolated from the rest of the system and from other contaners, but gives the illusion of running in its own OS istance.

* Multiple docker containers can be run on the single oprating system simultaneously, you can manage those containers with Docker.

* Docker applications run in cntainers that can be used on any system: a laptop, on premises, or in the cloud.

* Simply we can say Docker is a container management service.

## What is a Docker container?

A container is a standard unit of software that packages up code and all its dependenices so the application runs quickly and reliably from one computing environement to another.

* Containerization been aroud for a long time, but it was introduced in a different way by Docker.

* It packages application as images that contain evrything needed to run them: code, runtime environment, libraries, and configuration.

* A Docker container image is a lightweight, standalone, executable package of softaware that include everything needed to run an applcation: code, runtime, system tools, system libraries and setting.

## Virtualization

Virtulization is technology that lets you create useful IT services using resources that are traditionally bound to hardware. It allows you to use a physical machine's full capacity distributing its capabilities among many users or envirionments.

#### How does virtualization work?

Software called hypervisors also known as a virtual machine monitor (VMM) separate the physical resources from the virtual environments. 

Hypervisors can sit on top of an operating system (desktop or server), hypervisors take your physical resources(Processor, RAM, Hard Disk) and divide them up so that virtual environments can use them.


### Docker Architecture

Image

- An image is a read-only template with instructions for creating a Docker container. you may build, an image which is based on the Ubuntu image or SQL Server.

Container 

- a Cantainer is a runnable instance of an image. you can create, start, stop, move, or delete a container using the docker API or CLI.

Regitry 

- A Docker regitry Docker images. Docker Hub is a public regitry that anyone can use, and Docker is configured to look for images on Docker Hub by default. you can even run your own private registry.

Client

- The Docker client is the primary way that many Docker users interact with Docker. when you use commands such as docjer run, the client sends these commands to dockerd, wich carries them out. the docker commad uses the docker API.

Docker daemon

- the Docker daemen listens for Docker API requests and manges Docker objects such as images, containers, networks, and volumes.

Namespaces

- Docker uses a technology called namespaces to provide the isolated workspace called the container. When you run a container, Docker create a set of namespaces for that container. these namespaces provide a layer of isolation. Each aspect of a container runs in a separate namespace and its access is limite to that namespace.

Why do developers use Docker? 🤔

The great advantage ofDockeris the ability to model each container as an image that can be stored locally.

Some Dockerfile keywords :

FROM :
    
    Allows you to tell Docker under which OS your virtual machine should run.
    This is the first keyword of your Dockerfile and this one is mandatory .
    The most common are debian:buster for Debian or alpine:x:xx for Linux .

RUN :
    Allows you to launch a command on your virtual machine
    In general, the firstRUNprovided in the Dockerfile consist of updating your VM's resources, such as apk, or adding basic utilities such as vim , curl or sudo .

COPY :
    You have it ! This allows you to copy a file.
    Copy it? From where?
    You simply indicate where your file to copy is located from the directory where your Dockerfile is located, then where you want to copy it to your virtual machine.

A docker image is a folder, it must contain yourDockerfileat the root of the folder but can also contain a bunch of other files to then be able to copy them directly into your VM.

Docker-Compose:

Docker Compose is a tool that was developed to help define and share multi-container applications.
WithCompound, we can create a file YAML to define the services and, with a single command, bring everything into road or all of it to disassemble.

