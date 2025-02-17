# FFMPEG Installation Script 🎬

## Version : v7.1
## _Last Modified: 17 FEB 2025_ 📅

This script is designed to automate the installation of FFMPEG on your system. It will download the latest version of FFMPEG, extract it to the `/usr/bin/` directory, make the binary executable, and validate the installation by comparing the MD5 checksum. ✅

## Features 🌟

- Static build, no additional packages required. 🔧
- Replaces the existing version of FFMPEG in `/usr/bin/` with the new version. 🔄
- Validates the integrity of the installed FFMPEG binary using MD5 checksum. 🛠️
- Automatically handles error conditions, ensuring proper installation or termination with an error message. ⚠️

## Installation Steps 🛠️

Follow the steps below to use the script to install or update FFMPEG on your system:

### 1. Download Installation Script 📥

Use the following commands to download the script and execute it:

```bash
# Clone this repo by
git clone git@github.com:iotistic/ffmpeg-builds.git

# Go to ffmpeg-build directory
cd ffmpeg-builds

# Make the installation script executable
chmod +x install.sh

# Run the installation script with superuser privileges
sudo ./install_ffmpeg.sh
