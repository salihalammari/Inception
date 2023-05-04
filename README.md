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


#####