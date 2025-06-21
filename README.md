# C++ Dev Container with Valgrind & GDB

This repository provides a ready-to-use C++ development environment using **Docker** and **Visual Studio Code Dev Containers**. It includes essential tools for C++ development and debugging:

- **GCC / G++**
- **Make**
- **GDB (GNU Debugger)**
- **Valgrind (Memory Debugger)**
- **VS Code C++ Extension**

---

## 📦 What's Included

- **Base Image**: `ubuntu:latest`
- **Installed Packages**:
  - `build-essential`
  - `gdb`
  - `valgrind`

---

## 🛠 Installation Instructions

### ✅ Prerequisites

Install the following before getting started:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) or [OrbStack](https://orbstack.dev/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

---

### 🍎 macOS Setup

1. Install Docker Desktop
2. Install VS Code + Dev Containers extension
3. Open this repository in VS Code
4. Press `F1` → **Dev Containers: Reopen in Container**

---

### 🪟 Windows Setup

#### Windows 10/11 **Pro**
- Docker Desktop with **WSL 2 backend** is supported by default.

#### Windows 10/11 **Home**
1. Enable WSL 2:
   ```powershell
   wsl --install
   ```
2. Restart if prompted.
3. Install Docker Desktop (select **WSL 2 based engine**)
4. Open this repo in VS Code and select:  
   `Dev Containers: Reopen in Container`

---

## 🚀 Usage

Once inside the container, you can compile, run, and debug your C++ programs easily.

### ▶️ Compile and Run a Program

```bash
g++ -g -o myprogram myprogram.cpp && ./myprogram
```

### 🧪 Run with Valgrind (Full Leak Check)

To detect memory leaks and track uninitialized memory usage:

```bash
g++ -g -o myprogram myprogram.cpp && valgrind --leak-check=full --track-origins=yes ./myprogram
```

This will:
- Compile with debug symbols (`-g`)
- Use Valgrind to detect memory issues
- Track where memory leaks or uninitialized accesses originate

---

## 📁 Project Structure

```text
.
├── .devcontainer
│   ├── devcontainer.json   # VS Code container configuration
│   └── Dockerfile          # Docker image with C++ tools
├── useage.txt              # Valgrind useage with full leak check command
└── README.md               # You're here
```

---

## 🧹 Cleanup

To remove unused Docker containers, images, and volumes after development:

### 🧼 Basic Cleanup

```bash
# Remove stopped containers
docker container prune

# Remove dangling images
docker image prune

# Remove unused volumes
docker volume prune
```

### 🧨 Full Cleanup (All Unused Docker Data)

```bash
docker system prune -a
```

⚠️ This will delete **all** unused containers, networks, images, and build cache. Use with caution.

---

## 📃 License

MIT License — feel free to use, modify, and contribute.

---

## 🙋 Support

If you have questions, open an issue or submit a pull request!
