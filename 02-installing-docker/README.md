# 🐳 02 - Installing Docker

---

## 📌 Install Docker on EC2 Instance

To get Docker running on your EC2 instance, follow these steps:

### 1. **Update Your EC2 Instance** 🔄

First, ensure your EC2 instance's package list is up-to-date:

```bash
sudo apt-get update
```
### 2. **Install Docker** 🛠️

Next, install the Docker package:

```bash
sudo apt install docker.io
```

### 3. **Add Your User to the Docker Group**👥

To manage Docker as a non-root user, add your user to the docker group:

```bash
sudo usermod -aG docker $USER
```

### 4. **Verify Docker Installation**✅

To confirm that Docker is installed correctly, check its version:

```bash
docker --version
```
