from cv2 import cv2 as cv
import numpy as np

# ------------------ setting ---------------------
frames=52
width=200
height=200
# ------------------ create ---------------------
vid=np.zeros((width,height),dtype=float)
vid_RTL=np.zeros((width,height),dtype=float)
count_line=0
# ------------------ open file ------------------
Report= "Result/Text/Text1/Comparison/Comparison.txt"
R=open(Report,"w")
# ------------------ compare --------------------
for i in range(frames):
    min=1
    max=0
    all=0

    vid_gray    = "Datasets/Text/frame" + str(i) + "_Gray.txt"
    vid_gray_frame  = open(vid_gray,"r")

    vid_gray_RTL    = "Result/Text/Text1/Gray_RTL_frame" + str(i) + ".txt"
    vid_gray_RTL_frame  = open(vid_gray_RTL,"r")

    CompareResult = "Result/Text/Text1/Comparison/Error_frame" + str(i) + ".txt"
    CR  =   open(CompareResult,"w")

    for _ in range(width):
        for j in range(height):
            f_line  =   vid_gray_frame.readline()
            vid[_][j]   =   (float(f_line)/255)
            f_RTL_line  =   vid_gray_RTL_frame.readline()
            vid_RTL[_][j]   =   (float(f_RTL_line)/255)
        # ------------------ calculate ---------------------                
            err =   abs((float(f_line)/255) - (float(f_RTL_line)/255))
        # ---------write to files ---------------------
            CR.write(str(err) + "\n")
        # ------------------ max and min ---------------------
            if(err>=max):
                max=err
            if(err<=min):
                min=err
            all=all+err
            count_line=count_line+1
    # ------------------ write to file ---------------------
    R.write("Sai so trung binh cua frame " + str(i) +": " + str(all/count_line) + " - Max: " + str(max) + " - Min: " + str(min) +"\n")
    vid_gray_frame.close()
    vid_gray_RTL_frame.close()
    CR.close()
    # ------------------ show by frame ---------------------
    cv.imshow("vid_python",vid)
    cv.imshow("vid_RTL",vid_RTL)
    # ------------------ press q to exit -------------------
    if cv.waitKey(100) & 0xFF == ord('q'):
        break
#  ------------------ done ---------------------
print("done !")
CR.close()
R.close()
cv.destroyAllWindows()