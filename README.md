# Dot Files

Personal dotfiles repository for quickly bootstrapping Linux systems with a complete desktop environment, development tools, and Kubernetes infrastructure management utilities. Designed to work on Raspberry Pi, laptops, desktops, and other Linux systems.

## Quick Start

### Install Dotfiles
```bash
./install.sh
```
This script installs all dotfiles into their proper locations.

### Setup TMUX
```bash
./tmux.sh
```

### Install K8S Tools
```bash
./k8s_tools.sh
```

### Install Tools for WSL Alpine on Windows 10
```bash
./wsl_alpine_setup.sh
```

---

## Complete File Catalogue

### i3 Window Manager Configuration (`i3/`)

i3 is a tiling window manager with customizable workspaces.

- **`config`** - Base i3 window manager configuration
- **`config.laptop`** - Laptop-specific i3 settings
- **`config.linux`** - Generic Linux desktop configuration
- **`config.raspberry`** - Raspberry Pi optimized configuration
- **`config.workdesktop`** - Work desktop configuration
- **`i3blocks.conf.linux`** - i3blocks status bar configuration for Linux
- **`i3blocks.conf.raspberry`** - i3blocks status bar configuration for Raspberry Pi

### Pictures & Wallpapers (`pictures/`)

Wallpapers used for desktop backgrounds and i3 lock screen.

- **`audi_r8.png`** - Audi R8 wallpaper (variant 1)
- **`audi_r8_2.png`** - Audi R8 wallpaper (variant 2)
- **`audi_r8_3.png`** - Audi R8 wallpaper (variant 3)
- **`pink-floyd-dark-side-of-the-moon.png`** - Pink Floyd album artwork
- **`wallpaper.jpg`** - General purpose wallpaper

### Shell Configuration Files (`rcs/`)

Runtime configuration files for shells and terminal utilities.

- **`tmux.conf`** - Tmux terminal multiplexer configuration
- **`vimrc`** - Vim editor configuration
- **`zshrc`** - Zsh shell configuration

### Installation & Setup Scripts (`scripts/`)

Scripts for installing packages and configuring the system.

- **`arch_apps.sh`** - Package installer for Arch Linux
- **`debian_apps.sh`** - Package installer for Debian/Ubuntu systems
- **`setup_i3.sh`** - i3 window manager setup and installation
- **`install_awesome_fonts.sh`** - Font installation for i3 icons and status bar
- **`pinepro.sh`** - Pine Pro specific setup script
- **`fix_arch.sh`** - Arch Linux system fixes
- **`weather.sh`** - Weather information utility
- **`start_caddy.sh`** - Caddy web server startup script
- **`desktop_packages.txt`** - List of packages for desktop installations
- **`raspberry_packages.txt`** - List of packages for Raspberry Pi installations

### Utilities (`cool_cmds/`)

Useful command-line utilities.

- **`rainbox.sh`** - Text coloring utility for terminal output

### Ansible Playbooks (`playbooks/`)

Ansible automation for server configuration and management.

- **`inventory.ini`** - Ansible inventory file defining hosts
- **`test.yml`** - Test Ansible playbook

### Kubernetes Operations (`kops/`)

Scripts for managing Kubernetes clusters.

- **`common.sh`** - Common functions for Kubernetes operations
- **`start.sh`** - Start Kubernetes cluster
- **`stop.sh`** - Stop Kubernetes cluster

### CI/CD Configuration (`.circleci/`)

Continuous integration and deployment setup.

- **`config.yml`** - CircleCI pipeline configuration

### Root Level Scripts

- **`install.sh`** - Main installation script that sets up all dotfiles
- **`k8s_tools.sh`** - Kubernetes tools installation script
- **`tmux.sh`** - Tmux configuration launcher
- **`wsl_alpine_setup.sh`** - WSL Alpine Linux setup script
- **`config.yml`** - Additional configuration file

---

## Features

- **i3 Window Manager** - Customizable tiling window manager with multiple platform-specific configurations
- **Shell Configurations** - Optimized Zsh, Vim, and Tmux setups
- **Automated Installation** - Scripts for Arch Linux, Debian/Ubuntu, and Raspberry Pi
- **Kubernetes Tools** - Scripts for managing K8s clusters and installing tools
- **Ansible Automation** - Server configuration management with Ansible playbooks
- **WSL Support** - Alpine Linux setup for Windows Subsystem for Linux
- **CI/CD Integration** - CircleCI configuration for automated testing

---

## Platform Support

- Raspberry Pi
- Arch Linux
- Debian/Ubuntu
- Generic Linux
- WSL (Windows Subsystem for Linux) with Alpine

---

## Contributing

This is a personal dotfiles repository, but feel free to use any configurations or scripts that might be helpful for your own setup.

