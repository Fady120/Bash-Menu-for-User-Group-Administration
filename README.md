# 🧑‍💻 Bash-Menu-for-User-Group-Administration

A simple, interactive Bash script that provides a terminal-based menu to manage users and groups on a Linux system. Perfect for beginners learning system administration or for anyone who wants a quick CLI tool to manage accounts.

## 📋 Features

- 🧑 Add and delete system users
- 👥 Add and delete system groups
- 🧭 Easy-to-use text menu interface
- 🔁 Loops until you choose to exit
- ✅ Success/failure messages for actions

## 📸 Demo

```
====================
  Main Menu
====================
1) User
2) Group
3) Exit
--------------------
Enter a number, pls:
```

## 🚀 Getting Started

### Prerequisites

- Linux-based OS (Ubuntu, Debian, Fedora, etc.)
- Bash shell
- `sudo` privileges

### Installation

Clone the repo:

```bash
git clone https://github.com/your-username/linux-user-group-manager.git
cd linux-user-group-manager
```

### Usage

Make the script executable:

```bash
chmod +x Bash-Menu-for-User-Group-Administration.sh
```

Run the script:

```bash
./Bash-Menu-for-User-Group-Administration.sh
```

> You'll be prompted for your sudo password when needed.

## ⚠️ Warning

- This script performs actual changes to users and groups on your system.
- Use it responsibly, preferably in a controlled environment or virtual machine for testing.

## 🛠️ Commands Used

- `useradd`, `userdel`
- `groupadd`, `groupdel`
- `read`, `case`, `while`, `if`, etc.