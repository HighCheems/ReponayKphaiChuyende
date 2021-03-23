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
# Compare Result: Python and RTL. 
## CompareResult.txt file is write the error between Py and RTL. 
### Report file will show the AVG.txt - Max - Min value by frame
```python
def ShowAndCompare():
    frames=52 #Total 52 frames - frame 0 to frame 51
    vid=np.zeros((200,200),dtype=float)
    vid_RTL=np.zeros((200,200),dtype=float)
    CompareResult = "CompareResult.txt"
    CR=open(CompareResult,"w")
    Report= "Report.txt"
    R=open(Report,"w")
    count_line=0

    for i in range(frames):
        min=1
        max=0
        all=0

        vid_gray= "video/RTL/gray_" + str(i) + ".txt"
        vid_gray_frame= open(vid_gray,"r")
        vid_gray_RTL= "video/RTL/Gray_RTL_" + str(i) + ".txt"
        vid_gray_RTL_frame= open(vid_gray_RTL,"r")
        for _ in range(200):
            for j in range(200):
                f_line=vid_gray_frame.readline()
                vid[_][j]=float(f_line)
                f_RTL_line=vid_gray_RTL_frame.readline()
                vid_RTL[_][j]=BINtoDEC.oneElememtBinToDec(f_RTL_line)/255
                
                err=abs(float(f_line) - (BINtoDEC.oneElememtBinToDec(f_RTL_line)/255))
                CR.write(str(err) + "\n")

                if(err>=max):
                    max=err
                if(err<=min):
                    min=err
                all=all+err
                count_line=count_line+1
        R.write("Sai So Trung Binh cua frame " + str(i) +": " + str(all/count_line) + " - Max: " + str(max) + " - Min: " + str(min) +"\n")
        vid_gray_frame.close()
        vid_gray_RTL_frame.close()
        cv.imshow("vid_python",vid)
        cv.imshow("vid_RTL",vid_RTL)
        if cv.waitKey(100) & 0xFF == ord('q'):
            break
    CR.close()
    R.close()
    cv.destroyAllWindows()
```
