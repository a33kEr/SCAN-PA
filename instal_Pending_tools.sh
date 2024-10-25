#!/bin/bash
echo "Updating package list..."
sudo apt update

echo "Installing dnswalk..."
sudo apt install -y dnswalk

echo "Installing uniscan..."
sudo apt install -y uniscan

echo "Installing xsser..."
sudo apt install -y xsser

echo "Installing python3-pip..."
sudo apt install -y python3-pip

echo "Installing golismero with pip..."
sudo pip3 install golismero || {
    echo "Golismero installation via pip failed. Attempting manual installation..."
    mkdir -p ~/temp_golismero
    cd ~/temp_golismero
    wget https://files.pythonhosted.org/packages/68/3b/9b18e218f1b1a5709200055df5d58b04dd91d3b2c3f9037d4c0a8a96e42b/golismero-2.0.3-1.tar.gz
    tar -xzf golismero-2.0.3-1.tar.gz
    cd golismero-2.0.3-1
    sed -i 's/"rU"/"r"/' setup.py
    sudo python3 setup.py install
    cd ~
    rm -rf ~/temp_golismero
}

echo "All tools installed successfully."
