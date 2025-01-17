# Docker Docs

Docker notes, small projects, and solutions from several sources

## Table of Contents

- [What is docker? What is a container?](#what-is-docker)
- [Docker vs Virtual Machine](#docker-vs-virtual-machine)
- [Most Common Commands](#most-common-commands)

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
- [Docker Crash Course for Absolute Beginners](https://youtu.be/pg19Z8LL06w?si=t_eEymrAFJSpsakQ)
- [Docker Tutorial for Beginners](https://youtu.be/3c-iBn73dDE?si=QvR97s1D0LiWULOt)