#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Set noninteractive mode for apt-get
export DEBIAN_FRONTEND=noninteractive

# Update package lists and install prerequisite packages
sudo apt-get -y update
sudo apt-get install -y --no-install-recommends curl gnupg software-properties-common

# Add the LLVM snapshot GPG key and repository
curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
# Use lsb_release to get the codename (e.g. "jammy")
CODENAME=$(lsb_release -c | cut -f2)
sudo apt-add-repository "deb http://apt.llvm.org/${CODENAME}/ llvm-toolchain-${CODENAME}-19 main"

# Update package lists again after adding the repository
sudo apt-get -y update

# Install the desired packages
sudo apt-get install -y --no-install-recommends \
    autoconf \
    cmake \
    ninja-build \
    gcc \
    g++ \
    linux-tools-common \
    linux-tools-generic \
    libtool \
    llvm-19-dev \
    lld-19 \
    clang-19 \
    libomp-19-dev \
    libopenmpi-dev \
    openmpi-bin \
    git \
    make \
    imagemagick \
    ffmpeg

# Clean up unnecessary packages and caches
sudo apt-get autoremove -y --purge
sudo apt-get clean -y
sudo rm -rf /var/lib/apt/lists/*

# Set up update-alternatives for clang, clang++, opt, lld, and llvm-symbolizer
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-19 10 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-19
sudo update-alternatives --install /usr/bin/opt opt /usr/bin/opt-19 10
sudo update-alternatives --install /usr/bin/lld lld /usr/bin/lld-19 10
sudo update-alternatives --install /usr/bin/llvm-symbolizer llvm-symbolizer /usr/bin/llvm-symbolizer-19 10

# Create a symbolic link for magick (if not already present)
sudo ln -sf /usr/bin/convert /usr/bin/magick

# Reset DEBIAN_FRONTEND to its default (optional)
unset DEBIAN_FRONTEND

echo "Installation complete."
