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
#### Step 1: Install pip to manage module/package (pip is installed -> go to step 2)
```
sudo apt install python3-pip
```
#### Step 2: Install OpenCV
```
pip3 install opencv-python
```
#### Step 3: Verify Pip version
```
pip3 --version
```
# 2. Write a “Hello world” app
## Read, Write and Display a video/webcam using OpenCV python
### [Tutorial](https://learnopencv.com/read-write-and-display-a-video-using-opencv-cpp-python/)
#### [Video Download](https://drive.google.com/file/d/1BWPzk2y88_QBEzss0Cod3OraE97hag7K/view?usp=sharing)
##### Read and display a video
```python
import numpy as np
from cv2 import cv2 as cv

#please change your path to video you have downloaded here
cap = cv.VideoCapture('/home/cheems/Videos/bonk360p.mp4')

while cap.isOpened():
    ret, frame = cap.read()
    #if frame is read correctly ret is True
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break
    
    #convert all colors of frame to gray
    #gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    #cv.imshow('frame', gray)

    #show original frame
    cv.imshow('bonk 360p',frame)

    #press q to close frame
    if cv.waitKey(1) == ord('q'):
        break
    
cap.release()
cv.destroyAllWindows()
```
##### Write and display a video
```python
import numpy as np
from cv2 import cv2 as cv

#please change your path to video you have downloaded here
cap = cv.VideoCapture('/home/cheems/Videos/bonk360p.mp4')

#settings for output video
frame_width = int(cap.get(3))
frame_height = int(cap.get(4))
#check codecs on https://www.fourcc.org/codecs.php
fourcc = cv.VideoWriter_fourcc(*'MP4V')
fps = 23

#please change your path for your output video here
out = cv.VideoWriter('/home/cheems/Videos/bonk_out.mp4',fourcc, fps, (frame_width,frame_height))

while(True):
  ret, frame = cap.read()

  if ret == True: 
    out.write(frame)
    cv.imshow('output',frame)

    #press q to stop writing video
    if cv.waitKey(1) & 0xFF == ord('q'):
      break
  else:
    break  

cap.release()
out.release()
cv.destroyAllWindows()
```
### Capture and write to file from webcam
```python
from cv2 import cv2

video = cv2.VideoCapture(-1)

if (video.isOpened()==False):
    print("Unable to open camera")
fourcc = cv2.VideoWriter_fourcc(*'XVID')
out = cv2.VideoWriter('output.avi',fourcc,30.0,(640,480))

while(video.isOpened()):
    check, frame = video.read()
    if(check==True):
        out.write(frame)
        cv2.imshow('frame',frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

video.release()
out.release()
cv2.destroyAllWindows()


```
