# Reduce depth (layer) of Inception v1

# RTL code
```
224x224x3
[x] Stage 1: 
Conv 7x7 - 3 channel RGB - filters: 4 - stride 2 - weights: 7*7*3*4 + 4 bias.
Maxpool 3x3 - stride 2. 
==> 56x56x3

[x] Stage 2:
Conv 1x1 - 4 channel - filters: 4 - stride 1 - weights: 1*4*4 + 4 bias.
Conv 3x3 - 4 channel - filters: 12 - stride 1 - weights: 3*3*4*12 + 12 bias.
Maxpool 3x3 - stride 2. 
==> 28x28x12

[] Stage 3: 
*Inception: Input 12 channel - Output 12 channel (done - need weights add weights later)
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.         out:4
  Conv 1x1 - 12 channel - filters: 6 - stride 1 - weights: 1*12*6 + 6 bias.
   -> Conv 3x3 - 6 channel - filters: 2 - stride 1 - weights: 3*3*6*2 + 2 bias.     out:2
  Conv 1x1 - 12 channel - filters: 16 - stride 1 - weights: 1*12*16 + 16 bias.
   -> Conv 5x5 - 16 channel - filters: 2 - stride 1 - weights: 5*5*16*2 + 2 bias.   out:2
  Maxpool 3x3 - stride 1.
   -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.     out:4 

*Inception: Input 12 channel - Output 12 channel (done - add weights later)
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.           out:4
  Conv 1x1 - 12 channel - filters: 8 - stride 1 - weights: 1*12*8 + 8 bias.       
    -> Conv 3x3 - 8 channel - filters: 2 - stride 1 - weights: 3*3*8*2 + 2 bias.      out:2
  Conv 1x1 - 12 channel - filters: 32 - stride 1 - weights: 1*12*32 + 32 bias.
    -> Conv 5x5 - 32 channel - filters: 2 - stride 1 - weights: 5*5*32*2 + 2 bias.    out:2
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.      out:4
 
*Maxpool 3x3 - stride 2. *doing*
==> 14x14x12

[] Stage 4:
*Inception: Input 12 channel - Output 12 channel - 4a
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.           out:4
  Conv 1x1 - 12 channel - filters: 6 - stride 1 - weights: 1*12*6 + 6 bias.       
    -> Conv 3x3 - 6 channel - filters: 2 - stride 1 - weights: 3*3*6*2 + 2 bias.      out:2
  Conv 1x1 - 12 channel - filters: 16 - stride 1 - weights: 1*12*32 + 16 bias.
    -> Conv 5x5 - 16 channel - filters: 2 - stride 1 - weights: 5*5*16*2 + 2 bias.    out:2
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.      out:4
 
 *Inception: Input 12 channel - Output 12 channel - 4b
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.           out:4
  Conv 1x1 - 12 channel - filters: 7 - stride 1 - weights: 1*12*7 + 7 bias.       
    -> Conv 3x3 - 7 channel - filters: 2 - stride 1 - weights: 3*3*7*2 + 2 bias.      out:2
  Conv 1x1 - 12 channel - filters: 24 - stride 1 - weights: 1*12*24 + 24 bias.
    -> Conv 5x5 - 24 channel - filters: 2 - stride 1 - weights: 5*5*24*2 + 2 bias.    out:2
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.      out:4
 
 *Inception: Input 12 channel - Output 12 channel - 4c
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.           out:4
  Conv 1x1 - 12 channel - filters: 8 - stride 1 - weights: 1*12*8 + 8 bias.       
    -> Conv 3x3 - 8 channel - filters: 2 - stride 1 - weights: 3*3*8*2 + 2 bias.      out:2
  Conv 1x1 - 12 channel - filters: 24 - stride 1 - weights: 1*12*24 + 24 bias.
    -> Conv 5x5 - 24 channel - filters: 2 - stride 1 - weights: 5*5*24*2 + 2 bias.    out:2
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.      out:4
    
*Inception: Input 12 channel - Output 12 channel - 4d
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.           out:4
  Conv 1x1 - 12 channel - filters: 9 - stride 1 - weights: 1*12*9 + 9 bias.       
    -> Conv 3x3 - 9 channel - filters: 2 - stride 1 - weights: 3*3*9*2 + 2 bias.      out:2
  Conv 1x1 - 12 channel - filters: 32 - stride 1 - weights: 1*12*32 + 32 bias.
    -> Conv 5x5 - 32 channel - filters: 2 - stride 1 - weights: 5*5*32*2 + 2 bias.    out:2
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.      out:4

*Inception: Input 12 channel - Output 16 channel - 4e
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.           out:4
  Conv 1x1 - 12 channel - filters: 10 - stride 1 - weights: 1*12*10 + 10 bias.       
    -> Conv 3x3 - 10 channel - filters: 2 - stride 1 - weights: 3*3*10*2 + 2 bias.    out:2
  Conv 1x1 - 12 channel - filters: 32 - stride 1 - weights: 1*12*32 + 32 bias.
    -> Conv 5x5 - 32 channel - filters: 2 - stride 1 - weights: 5*5*32*2 + 2 bias.    out:2
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 8 - stride 1 - weights: 1*12*8 + 8 bias.      out:8
    
*Maxpool 3x3 - stride 2. 
==> 7x7x16

[] Stage 5:
*Inception: Input 16 channel - Output 18 channel - 5a
  Conv 1x1 - 16 channel - filters: 4 - stride 1 - weights: 1*16*4 + 4 bias.           out:4
  Conv 1x1 - 16 channel - filters: 10 - stride 1 - weights: 1*16*10 + 10 bias.       
    -> Conv 3x3 - 10 channel - filters: 4 - stride 1 - weights: 3*3*10*4 + 4 bias.    out:4
  Conv 1x1 - 16 channel - filters: 32 - stride 1 - weights: 1*16*32 + 32 bias.
    -> Conv 5x5 - 32 channel - filters: 4 - stride 1 - weights: 5*5*32*4 + 4 bias.    out:4
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 16 channel - filters: 6 - stride 1 - weights: 1*16*6 + 6 bias.      out:6

*Inception: Input 18 channel - Output 18 channel - 5b
  Conv 1x1 - 18 channel - filters: 4 - stride 1 - weights: 1*18*4 + 4 bias.           out:4
  Conv 1x1 - 18 channel - filters: 12 - stride 1 - weights: 1*18*12 + 12 bias.       
    -> Conv 3x3 - 12 channel - filters: 4 - stride 1 - weights: 3*3*12*4 + 4 bias.    out:4
  Conv 1x1 - 18 channel - filters: 48 - stride 1 - weights: 1*18*48 + 48 bias.
    -> Conv 5x5 - 48 channel - filters: 4 - stride 1 - weights: 5*5*48*4 + 4 bias.    out:4
  Maxpool 3x3 - stride 1
    -> Conv 1x1 - 18 channel - filters: 6 - stride 1 - weights: 1*18*6 + 6 bias.      out:6
    
*Avgpool 7x7 - stride 1 - no padding.
==> 1x1x18

[] Stage 6:
*Dense: input 18 - output 10 node (class)
*Softmax: 10 node (class)
Export predict to file.
```
