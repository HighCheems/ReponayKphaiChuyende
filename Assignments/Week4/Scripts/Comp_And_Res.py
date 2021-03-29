from cv2 import cv2 as cv
import numpy as np

frames=52
width=200
height=200

# create zero frame
vid=np.zeros((width,height),dtype=float)
vid_RTL=np.zeros((width,height),dtype=float)
# open file
CompareResult = "video/CompareResult.txt"
CR=open(CompareResult,"w")
Report= "video/Comparation.txt"
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
                
            err=abs((float(f_line)/255) - (BINtoDEC.oneElememtBinToDec(f_RTL_line)/255))
            CR.write(str(err) + "\n")

            if(err>=max):
                max=err
            if(err<=min):
                min=err
            all=all+err
            count_line=count_line+1
    R.write("Sai so trung binh cua frame " + str(i) +": " + str(all/count_line) + " - Max: " + str(max) + " - Min: " + str(min) +"\n")
    vid_gray_frame.close()
    vid_gray_RTL_frame.close()
    cv.imshow("vid_python",vid)
    cv.imshow("vid_RTL",vid_RTL)
    if cv.waitKey(100) & 0xFF == ord('q'):
        break
CR.close()
R.close()
cv.destroyAllWindows()