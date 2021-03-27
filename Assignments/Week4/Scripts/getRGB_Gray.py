from cv2 import cv2 as cv
import numpy as np

def getGray(r,g,b):
    g=(0.299*r + g*0.587 + b*0.114)
    return g

def getRGB_Gray(r,g,b,gray,count,width,height):
    getR = 'Text/frame' + str(count) + '_R.txt'
    getG = 'Text/frame' + str(count) + '_G.txt'
    getB = 'Text/frame' + str(count) + '_B.txt'
    getGray = 'Text/frame' + str(count) + '_Gray.txt'

    RED = open(getR, "w")
    GREEN = open(getG, "w")
    BLUE = open(getB, "w")
    GRAY = open(getGray, "w")

    for i in range(width):
        for j in range(height):
            RED.write(str( int(r[i][j]) ) + '\n')
            GREEN.write(str( int(g[i][j]) ) +'\n')
            BLUE.write(str( int(b[i][j]) ) +'\n')
            GRAY.write(str( int(gray[i][j]) ) +'\n')                                    

    RED.close()
    GREEN.close()
    BLUE.close()
    GRAY.close()


vid_in = cv.VideoCapture('Videos/cheems.mp4')

count = 0
width = 200
height = 200

# opencv reads the images as BGR instead of RGB
while(True):
    ret, frame = vid_in.read()
    if ret == True:
        cv.imshow('cheems',frame)
        b,g,r = cv.split(frame)
        gray = getGray(r,g,b)
        getRGB_Gray(r,g,b,gray,count,width,height)
        count = count + 1
        if cv.waitKey(100) & 0xFF==ord('q'):
            break
    else:
        break
vid_in.release()
cv.destroyAllWindows()