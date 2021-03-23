# We will upload all python files in when the assignment is over
# Module Calculate Gray
```python
def CalculateGray(r,g,b):
    g=(0.299*r + g*0.587 + b*0.114)/255
    return g
```
# Module Split RGB, Gray to file (We have some troubles with Modelsim, so we put all files in RTL folder)
## This module will write one by one frame into R,G,B,Gray txt files. File name: "red_frame-number.txt". 
### R,G,B format binary (floating point 32 bit).
### Gray format float number.
```python
def Split_RGB_GRAY(r,g,b,gray,count,width,height):
    red_file= "video/RTL/red_" + str(count) + ".txt"
    green_file= "video/RTL/green_" + str(count) + ".txt"
    blue_file= "video/RTL/blue_" + str(count) + ".txt"
    gray_file= "video/RTL/gray_" + str(count) + ".txt"

    RED=open(red_file, "w")
    GREEN=open(green_file, "w")
    BLUE=open(blue_file, "w")
    GRAY_F=open(gray_file, "w")

    for i in range(width):
        for j in range(height):
            RED.write(str(CVT_Decimal_FloatingPoint.IEEE754(float(r[i][j]))) + '\n')
            GREEN.write(str(CVT_Decimal_FloatingPoint.IEEE754(float(g[i][j]))) +'\n')
            BLUE.write(str(CVT_Decimal_FloatingPoint.IEEE754(float(b[i][j]))) +'\n')
            GRAY_F.write(str(float(gray[i][j])) +'\n')                                    

    RED.close()
    GREEN.close()
    BLUE.close()
    GRAY_F.close()
```
# We open the video and begin to split it
```python
def CalculateGrayAndSplit():
    vid = cv.VideoCapture('video/cheemssssssss.mp4')
    width = 200
    height = 200

    count=0
    while(True):
        ret,frame = vid.read()
        if ret == True:
            cv.imshow('cheems',frame)
            b,g,r=cv.split(frame)
            gray=CalculateGray(r,g,b) #Call the module CalculateGray
            Split_RGB_GRAY(r,g,b,gray,count,width,height) #Call the module Split_RGB_Gray
            count=count+1
            if cv.waitKey(100) & 0xFF==ord('q'):
                break
        else:
            break

    vid.release()
    cv.destroyAllWindows()
```
