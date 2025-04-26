# 🐳 03 - Docker Basic Commands

---

In this section, we'll cover the most commonly used **Docker commands** that every beginner should know. These commands will help you manage Docker containers, images, and more. Below is a list of essential commands and their descriptions:

---

## 📋 Command List

| **Command**                                | **Description**                                           |
|--------------------------------------------|-----------------------------------------------------------|
| `docker --version`                         | Check the installed Docker version.                       |
| `docker info`                              | View Docker system information, including containers and images. |
| `docker ps`                                | List all currently running containers.                    |
| `docker ps -a`                             | List all containers (including stopped ones).             |
| `docker images`                            | List all Docker images stored locally.                    |
| `docker run <image_name>`                  | Run a container from the specified image.                 |
| `docker stop <container_id>`               | Stop a running container.                                |
| `docker rm <container_id>`                 | Remove a stopped container.                               |
| `docker rmi <image_name>`                  | Remove a Docker image from your local system.             |
| `docker build -t <image_name> .`           | Build a Docker image from a `Dockerfile`.                 |
| `docker system prune -a`                   | Clean up unused containers, images, networks, and volumes. |

---

## 🧠 Understanding Docker Commands

These commands form the core of Docker usage and will be your go-to for container management. The key operations include:

- **Listing** containers and images (`docker ps`, `docker images`)
- **Managing containers** (`docker stop`, `docker rm`)
- **Working with Docker images** (`docker build`, `docker rmi`)
- **System maintenance** (`docker system prune`)

By using these commands, you will be able to effectively manage your Docker environment and keep things organized. 🚀
