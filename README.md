# FG Full Stack Developer Environment Setup - For New Computer Dev Tools & Packages Installation

Easily bootstrap a modern full stack development environment on **macOS** or **Windows** with a single script. This project automates the installation of essential tools, programming languages, and productivity enhancements for professional developers.

---

## 🚀 Features

- **Automated setup** for all major development tools
- Installs and configures:
  - Git, Curl, Wget, Htop, Zsh (macOS), 7zip (Windows), VS Code, and more
  - PHP, Composer, Laravel tools
  - Node.js, Yarn, PNPM, ESlint, Prettier, Vite, Create Next App, TypeScript
  - Python, Pipenv, Black, Flake8, Virtualenv
  - Zsh enhancements & Starship prompt (macOS)
  - Visual Studio Build Tools (Windows)
- Adds useful shell enhancements and configures environment variables
- **Idempotent**: safe to run multiple times
- Clear, step-by-step instructions for both platforms

---

## 🖥️ macOS Quick Start

1. Open **Terminal**.
2. Make the script executable:
   ```sh
   chmod +x macos_setup.sh
   ```
3. Run the setup script:
   ```sh
   ./macos_setup.sh
   ```
4. Wait for all packages to install.
5. After completion, restart your terminal and run:
   ```sh
   source ~/.zshrc
   ```
6. You’re ready to code!

See [`macos/MACOS_INSTALLATION.md`](macos/MACOS_INSTALLATION.md) for more details.

---

## 🪟 Windows Quick Start

1. Open **PowerShell as Administrator**.
2. Install Chocolatey (if not already installed):
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 0x300; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```
3. Run the setup script:
   ```powershell
   .\windows_setup.sh
   ```
4. Wait for all packages to install.

See [`windows/WINDOWS_INSTALLATION.md`](windows/WINDOWS_INSTALLATION.md) for more details.

---

## 📁 Project Structure

```
full-stack-dev-setup/
├── macos/
│   ├── MACOS_INSTALLATION.md
│   └── macos_setup.sh
├── windows/
│   ├── WINDOWS_INSTALLATION.md
│   └── windows_setup.sh
└── README.md
```

---

## ℹ️ Notes

- Ensure you have a stable internet connection during installation.
- Scripts are safe to re-run; they will not break your system if run multiple times.
- For customizations, edit the respective setup scripts in `macos/` or `windows/`.
- Some installations may prompt for your password or require confirmation.

---

## 📄 License

This project is licensed under the MIT License.

---

**Happy Coding!**
