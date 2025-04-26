# 🐳 01 - Introduction to Docker

---

## 📌 What is Docker?

**Docker** is an open-source **containerization platform** that allows developers to **package applications and their dependencies** into **lightweight, portable containers** that can **run consistently across any environment** — development, testing, or production. 🚀

---

## 🏛️ Containerization vs Virtualization

| Containerization | Virtualization |
|:-----------------|:---------------|
| 🏢 **Container = Flat in a building** → Shares OS resources, lightweight, isolated (like garden, water tank shared). | 🏠 **VM = Own house** → Has its own OS, heavy, and fully separate. |
| ⚡ Fast and efficient use of system resources. | 🐘 Slower due to full OS inside each VM. |
| 💸 Cost-effective and space-saving. | 💰 More costly due to resource duplication. |

<br>

💡 **Hack:**  
**Containers = Light & Fast** | **VMs = Heavy & Full OS**

---

## 🧠 Why Use Docker?

- **Consistency Across Environments** 🔁 — Works the same everywhere.
- **Lightweight and Fast** ⚡ — Uses fewer resources, quicker startup.
- **Isolation** 🚪 — Apps run independently without conflicts.
- **Portability** 🎒 — Easily move apps across systems and clouds.
- **Scalability** 🚀 — Makes scaling apps effortless in production.
- **Microservices Ready** 🧩 — Designed perfectly for microservices.
- **CI/CD Integration** 🔄 — Fits smoothly into DevOps pipelines.

---

## 🏗️ How Docker Works (Simplified View)

### Traditional Apps vs Docker Apps

| Traditional Apps | Docker Apps |
|:-----------------|:------------|
| Installed manually on OS 🛠️ | Runs inside isolated containers 📦 |
| Heavyweight (full VM needed) 🐘 | Lightweight (only necessary parts) 🪶 |
| Hard to replicate across systems 😖 | Easy to move across systems 😍 |

### The Docker Process

```plaintext
Dockerfile ➡️ (build) ➡️ Image ➡️ (run) ➡️ Container
