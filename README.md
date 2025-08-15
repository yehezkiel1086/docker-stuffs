# Docker Docs

Docker notes, small projects, and solutions from several sources.

## Table of Contents

- [What is docker?](#what-is-docker)
  - [What is a container?](#what-is-a-container)
  - [Before vs After Containers](#before-vs-after-containers)
  - [Docker Image vs Container](#docker-image-vs-container)
- [Docker vs Virtual Machine](#docker-vs-virtual-machine)
- [Most Common Commands](#most-common-commands)

## What is Docker?

### What is a Container?

- A way to **package** application with all the necessary **dependencies** and **configurations**
- **Portable artifact**, easily shared and moved around
- Makes development and deployment **more efficient**.
- Layers of images
- Mostly **Linux Base Image**, bc small in size
- Application image on top

Containers live in container repositories:
- Private repositories
- Public repository for Docker (e.g: DockerHub)

### Before vs After Containers

#### Before Containers

- Installation process different on each OS environment
- Many steps where something could go wrong
- Configuration on server needed: Dependency version conflicts
- Textual guide of deployment: Misunderstandings

#### After Containers

- Own isolated environment (based on lightweight linux)
- Packaged with all needed configuration
- One command to install the app
- Run same app with 2 different versions
- Developers and Operations work together to package the application in a container
- No environmental configuration needed on server (except Docker Runtime)

### Docker Image vs Container:
  - Image:
    - The actual package
    - **Artifact**, that can be moved around
  - Container:
    - Actually **start the application**
    - Container environment is created

### Docker vs Virtual Machine

The difference lies on what parts of the operating system they virtualize:
- Docker virtualizes the Applications layer
- Virtual Machines virtualizes the OS Kernel and the Applications layer

This means:
- **Size**: The size of Docker images are much smaller (couple of MB)
- **Speed**: Docker containers start and run much fast
- **Compatibility**: VM of any OS can run on any OS host -- Docker can't do this, a workaround is installing a technology called **Docker Toolbox** which abstracts away the Kernel

### What is Docker?

Docker is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers. - [Wikipedia](https://en.wikipedia.org/wiki/Docker_(software))

From the above definition, basically, Docker consists of three things:
1. A set of Platform as a Service (PaaS)
2. Docker uses OS-level virtualization
3. For delivery of software in packages called containers

**Docker Architecture**:
![Docker Diagram](https://sysdig.com/wp-content/uploads/image2-49.png)

## Most Common Commands

<table>
  <tr>
    <th>Command</th>
    <th>Explanation</th>
    <th>Shorthand</th>
  </tr>
  <tr>
    <td><code>docker image ls</code></td>
    <td>Lists all images</td>
    <td><code>docker images</code></td>
  </tr>
  <tr>
    <td><code>docker image rm [image]</code></td>
    <td>Removes an image</td>
    <td><code>docker rmi</code></td>
  </tr>
  <tr>
    <td><code>docker image pull [image]</code></td>
    <td>Pulls image from a docker registry</td>
    <td><code>docker pull</code></td>
  </tr>
  <tr>
    <td><code>docker container ls</code></td>
    <td>Lists running containers</td>
    <td><code>docker ps</code></td>
  </tr>
  <tr>
    <td><code>docker container ls -a</code></td>
    <td>Lists all containers</td>
    <td><code>docker ps -a</code></td>
  </tr>
  <tr>
    <td><code>docker container run [image]</code></td>
    <td>Runs a container from an image</td>
    <td><code>docker run [image]</code></td>
  </tr>
  <tr>
    <td><code>docker container rm [container]</code></td>
    <td>Removes a container</td>
    <td><code>docker rm [container]</code></td>
  </tr>
  <tr>
    <td><code>docker container stop [container]</code></td>
    <td>Stops a container</td>
    <td><code>docker stop [container]</code></td>
  </tr>
  <tr>
    <td><code>docker container exec [container]</code></td>
    <td>Executes a command inside the container</td>
    <td><code>docker exec [container]</code></td>
  </tr>
</table>

## Sources

- [DevOps with Docker](https://devopswithdocker.com/)
- [Docker Training](https://github.com/arsitektur-jaringan-komputer/Pelatihan-Docker)
