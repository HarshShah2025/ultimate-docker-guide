#!/bin/bash

# 📁 Project Name
PROJECT_NAME="ultimate-docker-guide"

# 📂 Create Project Directory
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# 📜 Create Main README.md
cat <<EOL > README.md
# 🐳 Ultimate Docker Guide

Welcome to the **Ultimate Docker Guide**!  
This course is specially designed for **beginners** who want to master Docker from scratch with hands-on examples. 🚀

---
## 📚 Course Content

| #  | Topic | Description |
|:--:|:-----|:------------|
| 01 | [Introduction to Docker](./01-introduction-to-docker/README.md) | Understand what Docker is and why it's powerful. |
| 02 | [Installing Docker](./02-installing-docker/README.md) | Step-by-step guide to install Docker on your system. |
| 03 | [Docker Basic Commands](./03-docker-basic-commands/README.md) | Learn essential Docker commands. |
| 04 | [Dockerfile and Images](./04-dockerfile-and-images/README.md) | Build your own Docker images with Dockerfiles. |
| 05 | [Docker Containers](./05-docker-containers/README.md) | Run, manage, and stop containers. |
| 06 | [Docker Volumes](./06-docker-volumes/README.md) | Manage persistent storage in Docker. |
| 07 | [Docker Networks](./07-docker-networks/README.md) | Connect containers with Docker networking. |
| 08 | [Docker Compose](./08-docker-compose/README.md) | Manage multi-container applications. |
| 09 | [Real World Projects](./09-real-world-projects/) | Build projects using everything you've learned. |

---
## 📜 License

This project is licensed under the [MIT License](./LICENSE).
EOL

# 📂 Create Topic Folders + README.md inside
folders=(
"01-introduction-to-docker"
"02-installing-docker"
"03-docker-basic-commands"
"04-dockerfile-and-images"
"05-docker-containers"
"06-docker-volumes"
"07-docker-networks"
"08-docker-compose"
"09-real-world-projects/project-1"
"09-real-world-projects/project-2"
)

for folder in "${folders[@]}"
do
    mkdir -p "$folder"
    echo "# ${folder//-/ }" > "$folder/README.md"
done

# 📜 Create LICENSE File
cat <<EOL > LICENSE
MIT License

Copyright (c) $(date +%Y)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
...
EOL

# 🛠️ Initialize Git
git init
git add .
git commit -m "Initial commit: Ultimate Docker Guide structure"

# 🌐 Connect to GitHub and Push
# 👉 Change this line to your GitHub repo URL
GITHUB_URL="git@github.com:your-username/ultimate-docker-guide.git"

git branch -M main
git remote add origin $GITHUB_URL
git push -u origin main

echo "✅ Project created and pushed successfully!"

