# 1. Setup environment
## Install ModelSim on Ubuntu
### [Tutorial](https://gist.github.com/Razer6/cafc172b5cffae189b4ecda06cf6c64f) TESTING
### [Youtube](https://www.youtube.com/watch?v=5y1zwylqgUM)
#### Step 0: Please download 2 parts of ModelSim [here](https://fpgasoftware.intel.com/?product=modelsim_ae#tabs-2) before continue to next step
#### Step 1: Install ModelSim: Go to the folder have 2 parts of ModelSim (if they do not in the default folder). 
##### Setting permision Execute: Allow executing file as program (Another way: Properties of file -> Permissions -> Tick "Allow executing file as program")
```
chmod +x ModelSimProSetup-20.4.0.72-linux
```
##### Run file to setup
```
./ModelSimProSetup-20.4.0.72-linux
```
#### Step 2: Install library for ModelSim
```
sudo apt-get install libxrender1:i386 libxtst6:i386 libxi6:i386
``` 
```
sudo apt-get install libxft2 libxft2:i386 lib32ncurses6
```
```
sudo apt-get install gcc-multilib g++-multilib \lib32z1 lib32stdc++6 lib32gcc1 
\expat:i386 fontconfig:i386 libfreetype6:i386 libexpat1:i386
libc6:i386 libgtk-3-0:i386 \libcanberra0:i386 libice6:i386 libsm6:i386 libncurses5:i386
zlib1g:i386 \libx11-6:i386 libxau6:i386 libxdmcp6:i386 libxext6:i386
libxft2:i386 libxrender1:i386 \libxt6:i386 libxtst6:i386
```
#### Step 3: Open vsim
```
cd ~/intelFPGA_pro/20.4/modelsim_ase/linuxaloem/
./vsim
```
# 2. Color conversion algorithms
## RGB -> GRAY
### [Algorithm](https://docs.opencv.org/4.5.1/de/d25/imgproc_color_conversions.html)
#### RGB[A] to Gray: Y <- 0.299 ⋅ R + 0.587 ⋅ G + 0.114 ⋅ B
```python
cvtColor(src, bwsrc, cv::COLOR_RGB2GRAY);
```
# 3. Python implementation
```python
from cv2 import cv2 as cv

# please change your image path
img = cv.imread('/home/cheems/Pictures/cheems_rgb.jpg', cv.IMREAD_UNCHANGED)
#print('Original Dimensions : ',img.shape)
 
# scale settings
scale_percent = 30 # percent of original size
width = int(img.shape[1] * scale_percent / 100)
height = int(img.shape[0] * scale_percent / 100)
dim = (width, height)
  
# resize image
resized = cv.resize(img, dim, interpolation = cv.INTER_AREA)
#print('Resized Dimensions : ',resized.shape)
cv.imshow("Resized image", resized)

# grayscale image
# RGB[A] to Gray: Y ← 0.299⋅R + 0.587⋅G + 0.114⋅B
grayscaled = cv.cvtColor(resized, cv.COLOR_RGB2GRAY)
cv.imshow("Grayscaled image", grayscaled)

# press any keys, dont press Close(X)
cv.waitKey(0)

cv.destroyAllWindows()
```
# 4. Verilog implementation

# 5. Comparation
