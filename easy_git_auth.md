
# Easy GitHub CLI Authentication Guide

Authenticate your local development environment with GitHub using the official GitHub CLI (`gh`).

---

## Prerequisites

- Ensure you have a GitHub account and are logged in via your default web browser.

---

## macOS

### 1. Install GitHub CLI

Install via Homebrew:

```sh
brew install gh
```

### 2. Authenticate with GitHub

Run the following command and follow the interactive prompts:

```sh
gh auth login
```

---

## Windows

### 1. Install GitHub CLI

**Option 1: Download from Official Website**

[Download GitHub CLI](https://cli.github.com/)

**Option 2: Install via Windows Package Manager (winget)**

```powershell
winget install --id GitHub.cli
```

### 2. Authenticate with GitHub

Open Command Prompt or PowerShell and run:

```sh
gh auth login
```

Follow the interactive prompts to complete authentication.

---

## Tips

- The `gh` CLI can manage repositories, issues, pull requests, and more directly from your terminal.
- For more info, see the [GitHub CLI documentation](https://cli.github.com/manual/).