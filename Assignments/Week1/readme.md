# 1. Setup Environment
## Create GitHub Repo
[Github Repo](https://github.com/HighCheems/ReponayKphaiChuyende)
## Install Ubuntu desktop
[Ubuntu desktop](https://ubuntu.com/download/desktop)
## Install Python 3.9.2 on Ubuntu (Ubuntu 20.04.2.0 LTS is included with Python 3.8.5)
### [Tutorial](https://phoenixnap.com/kb/how-to-install-python-3-ubuntu)

#### Step 1: Update Local Repositories
```
sudo apt update
```
#### Step 2: Install Supporting Software
```
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
```
#### Step 3: Download the Latest Version of Python Source Code
```
cd /tmp
```
```
wget https://www.python.org/ftp/python/3.9.2/Python-3.9.2.tgz
```
#### Step 4: Extract Compressed Files
```
tar -xf Python-3.9.2.tgz
```
#### Step 5: Test System and Optimize Python
```
cd Python-3.9.2
```
```
./configure --enable-optimizations
```
#### Step 6: Install a Second Instance of Python (recommended)
```
sudo make altinstall
```
#### (Option) Overwrite Default Python Installation
```
sudo make install
```
#### Step 7: Verify Python Version
```
python3 --version
```
## Install OpenCV-Python Package
[OpenCV-Python](https://pypi.org/project/opencv-python/)
### [Tutorial](https://docs.opencv.org/master/d2/de6/tutorial_py_setup_in_ubuntu.html)
#### Step 1
```
sudo apt-get install python3-opencv
```
#### Step 2: Install pip to manage module/package
```
sudo apt install python3-pip
```
#### Step 3: Install OpenCV
```
pip3 install opencv-python
```
# 2. Write a “Hello world” app
## Read, Write and Display a video/webcam using OpenCV python
