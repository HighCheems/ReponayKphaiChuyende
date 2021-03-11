# 1. Setup environment
## Install ModelSim on Ubuntu
### [Tutorial](https://gist.github.com/Razer6/cafc172b5cffae189b4ecda06cf6c64f) TESTING
### [Youtube](https://www.youtube.com/watch?v=5y1zwylqgUM)
#### Step 0: Please download 2 parts of ModelSim [here](https://fpgasoftware.intel.com/?product=modelsim_ae#tabs-2) before continue to next step
#### Step 1: Install ModelSim
```
chmod +x ModelSimProSetup-20.4.0.72-linux
```
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

# 4. Verilog implementation

# 5. Comparation
