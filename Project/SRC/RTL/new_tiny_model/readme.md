# Reduce depth (layer) of Inception v1

# RTL code
```
[x] Stage 1: 
Conv 7x7 - 3 channel RGB - filters: 4 - stride 2 - weights: 7*7*3*4 + 4 bias.
Maxpool 3x3 - stride 2.

[x] Stage 2:
Conv 1x1 - 4 channel - filters: 4 - stride 1 - weights: 1*4*4 + 4 bias.
Conv 3x3 - 4 channel - filters: 12 - stride 1 - weights: 3*3*4*12 + 12 bias.
Maxpool 3x3 - stride 2.

[] Stage 3: 
Inception: Input 12 channel - Output 18 channel - done
  Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.         out:4
  Conv 1x1 - 12 channel - filters: 6 - stride 1 - weights: 1*12*6 + 6 bias.
   -> Conv 3x3 - 6 channel - filters: 8 - stride 1 - weights: 3*3*6*8 + 8 bias.     out:8
  Conv 1x1 - 12 channel - filters: 16 - stride 1 - weights: 1*12*16 + 16 bias.
   -> Conv 5x5 - 16 channel - filters: 2 - stride 1 - weights: 5*5*16*2 + 2 bias.   out:2
  Maxpool 3x3 - stride 1.
   -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.     out:4 

Inception: Input 18 channel - Output 30 channel - *doing now*
  Conv 1x1 - 12 channel - filters: 8 - stride 1 - weights: 1*12*4 + 8 bias.           out:8
  Conv 1x1 - 12 channel - filters: 8 - stride 1 - weights: 1*12*6 + 8 bias.       
    -> Conv 3x3 - 8 channel - filters: 12 - stride 1 - weights: 3*3*8*12 + 12 bias.   out:12
  Conv 1x1 - 12 channel - filters: 32 - stride 1 - weights: 1*12*32 + 32 bias.
    -> Conv 5x5 - 32 channel - filters: 6 - stride 1 - weights: 5*5*32*6 + 6 bias.    out:6
  Maxpool 3x3 - stride 1.
    -> Conv 1x1 - 12 channel - filters: 4 - stride 1 - weights: 1*12*4 + 4 bias.      out:4
      
Maxpool 3x3 - stride 2.
```
