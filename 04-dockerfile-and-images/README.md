# 🐳 Dockerfile & Images 

---

## 🎯 What You'll Master  
🔹 **Dockerfile** - The recipe for your container  
🔹 **Image Building** - From code to deployable artifact   
---

## Docker file  

### 1️⃣ **Write a Dockerfile** *(demo.Dockerfile)*  
```dockerfile
FROM python:3.9-slim  # � Start lean  
WORKDIR /app          # 📂 Container filesystem  
COPY . .              # 📦 Bring your code  
RUN pip install -r requirements.txt  # ⚙️ Setup  
CMD ["python", "app.py"]  # 🏁 Run command  
```

### 2️⃣ **Build It**  
```bash
docker build -t my-python-app:v1 .  # 🔥 Create image
```

### 3️⃣ **Run It**  
```bash
docker run -d -p 4000:80 my-python-app:v1  # 🚢 Launch container
```

---

## 🏆 Pro Tips  
✅ **Layer Caching** - Order commands from least to most volatile  
✅ **Multi-Stage Builds** - Keep final image tiny (see below)  
✅ **.dockerignore** - Speed up builds by excluding junk files  

---

## 🌟 Advanced Example (Multi-Stage)  
```dockerfile
# 🏗️ Build Stage  
FROM node:18 as builder  
WORKDIR /build  
COPY . .  
RUN npm install && npm run build  

# 🏎️ Final Stage  
FROM nginx:alpine  
COPY --from=builder /build/dist /usr/share/nginx/html  # 🎯 Only bring the goods!
```

---

> 💡 **Remember**: `docker system prune` saves disk space!  
