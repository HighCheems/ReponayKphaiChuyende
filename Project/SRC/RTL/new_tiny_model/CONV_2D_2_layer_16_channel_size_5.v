
module CONV_2D_2_layer_16_channel_size_5 #(
parameter IMG_Width=5, 
parameter IMG_Height=5, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0,
parameter w00_0 = 1,
parameter w01_0 = 1,
parameter w02_0 = 1,
parameter w03_0 = 1,
parameter w04_0 = 1,
parameter w05_0 = 1,
parameter w06_0 = 1,
parameter w07_0 = 1,
parameter w08_0 = 1,
parameter w09_0 = 1,
parameter w010_0 = 1,
parameter w011_0 = 1,
parameter w012_0 = 1,
parameter w013_0 = 1,
parameter w014_0 = 1,
parameter w015_0 = 1,
parameter w00_1 = 1,
parameter w01_1 = 1,
parameter w02_1 = 1,
parameter w03_1 = 1,
parameter w04_1 = 1,
parameter w05_1 = 1,
parameter w06_1 = 1,
parameter w07_1 = 1,
parameter w08_1 = 1,
parameter w09_1 = 1,
parameter w010_1 = 1,
parameter w011_1 = 1,
parameter w012_1 = 1,
parameter w013_1 = 1,
parameter w014_1 = 1,
parameter w015_1 = 1,
parameter w00_2 = 1,
parameter w01_2 = 1,
parameter w02_2 = 1,
parameter w03_2 = 1,
parameter w04_2 = 1,
parameter w05_2 = 1,
parameter w06_2 = 1,
parameter w07_2 = 1,
parameter w08_2 = 1,
parameter w09_2 = 1,
parameter w010_2 = 1,
parameter w011_2 = 1,
parameter w012_2 = 1,
parameter w013_2 = 1,
parameter w014_2 = 1,
parameter w015_2 = 1,
parameter w00_3 = 1,
parameter w01_3 = 1,
parameter w02_3 = 1,
parameter w03_3 = 1,
parameter w04_3 = 1,
parameter w05_3 = 1,
parameter w06_3 = 1,
parameter w07_3 = 1,
parameter w08_3 = 1,
parameter w09_3 = 1,
parameter w010_3 = 1,
parameter w011_3 = 1,
parameter w012_3 = 1,
parameter w013_3 = 1,
parameter w014_3 = 1,
parameter w015_3 = 1,
parameter w00_4 = 1,
parameter w01_4 = 1,
parameter w02_4 = 1,
parameter w03_4 = 1,
parameter w04_4 = 1,
parameter w05_4 = 1,
parameter w06_4 = 1,
parameter w07_4 = 1,
parameter w08_4 = 1,
parameter w09_4 = 1,
parameter w010_4 = 1,
parameter w011_4 = 1,
parameter w012_4 = 1,
parameter w013_4 = 1,
parameter w014_4 = 1,
parameter w015_4 = 1,
parameter w00_5 = 1,
parameter w01_5 = 1,
parameter w02_5 = 1,
parameter w03_5 = 1,
parameter w04_5 = 1,
parameter w05_5 = 1,
parameter w06_5 = 1,
parameter w07_5 = 1,
parameter w08_5 = 1,
parameter w09_5 = 1,
parameter w010_5 = 1,
parameter w011_5 = 1,
parameter w012_5 = 1,
parameter w013_5 = 1,
parameter w014_5 = 1,
parameter w015_5 = 1,
parameter w00_6 = 1,
parameter w01_6 = 1,
parameter w02_6 = 1,
parameter w03_6 = 1,
parameter w04_6 = 1,
parameter w05_6 = 1,
parameter w06_6 = 1,
parameter w07_6 = 1,
parameter w08_6 = 1,
parameter w09_6 = 1,
parameter w010_6 = 1,
parameter w011_6 = 1,
parameter w012_6 = 1,
parameter w013_6 = 1,
parameter w014_6 = 1,
parameter w015_6 = 1,
parameter w00_7 = 1,
parameter w01_7 = 1,
parameter w02_7 = 1,
parameter w03_7 = 1,
parameter w04_7 = 1,
parameter w05_7 = 1,
parameter w06_7 = 1,
parameter w07_7 = 1,
parameter w08_7 = 1,
parameter w09_7 = 1,
parameter w010_7 = 1,
parameter w011_7 = 1,
parameter w012_7 = 1,
parameter w013_7 = 1,
parameter w014_7 = 1,
parameter w015_7 = 1,
parameter w00_8 = 1,
parameter w01_8 = 1,
parameter w02_8 = 1,
parameter w03_8 = 1,
parameter w04_8 = 1,
parameter w05_8 = 1,
parameter w06_8 = 1,
parameter w07_8 = 1,
parameter w08_8 = 1,
parameter w09_8 = 1,
parameter w010_8 = 1,
parameter w011_8 = 1,
parameter w012_8 = 1,
parameter w013_8 = 1,
parameter w014_8 = 1,
parameter w015_8 = 1,
parameter w00_9 = 1,
parameter w01_9 = 1,
parameter w02_9 = 1,
parameter w03_9 = 1,
parameter w04_9 = 1,
parameter w05_9 = 1,
parameter w06_9 = 1,
parameter w07_9 = 1,
parameter w08_9 = 1,
parameter w09_9 = 1,
parameter w010_9 = 1,
parameter w011_9 = 1,
parameter w012_9 = 1,
parameter w013_9 = 1,
parameter w014_9 = 1,
parameter w015_9 = 1,
parameter w00_10 = 1,
parameter w01_10 = 1,
parameter w02_10 = 1,
parameter w03_10 = 1,
parameter w04_10 = 1,
parameter w05_10 = 1,
parameter w06_10 = 1,
parameter w07_10 = 1,
parameter w08_10 = 1,
parameter w09_10 = 1,
parameter w010_10 = 1,
parameter w011_10 = 1,
parameter w012_10 = 1,
parameter w013_10 = 1,
parameter w014_10 = 1,
parameter w015_10 = 1,
parameter w00_11 = 1,
parameter w01_11 = 1,
parameter w02_11 = 1,
parameter w03_11 = 1,
parameter w04_11 = 1,
parameter w05_11 = 1,
parameter w06_11 = 1,
parameter w07_11 = 1,
parameter w08_11 = 1,
parameter w09_11 = 1,
parameter w010_11 = 1,
parameter w011_11 = 1,
parameter w012_11 = 1,
parameter w013_11 = 1,
parameter w014_11 = 1,
parameter w015_11 = 1,
parameter w00_12 = 1,
parameter w01_12 = 1,
parameter w02_12 = 1,
parameter w03_12 = 1,
parameter w04_12 = 1,
parameter w05_12 = 1,
parameter w06_12 = 1,
parameter w07_12 = 1,
parameter w08_12 = 1,
parameter w09_12 = 1,
parameter w010_12 = 1,
parameter w011_12 = 1,
parameter w012_12 = 1,
parameter w013_12 = 1,
parameter w014_12 = 1,
parameter w015_12 = 1,
parameter w00_13 = 1,
parameter w01_13 = 1,
parameter w02_13 = 1,
parameter w03_13 = 1,
parameter w04_13 = 1,
parameter w05_13 = 1,
parameter w06_13 = 1,
parameter w07_13 = 1,
parameter w08_13 = 1,
parameter w09_13 = 1,
parameter w010_13 = 1,
parameter w011_13 = 1,
parameter w012_13 = 1,
parameter w013_13 = 1,
parameter w014_13 = 1,
parameter w015_13 = 1,
parameter w00_14 = 1,
parameter w01_14 = 1,
parameter w02_14 = 1,
parameter w03_14 = 1,
parameter w04_14 = 1,
parameter w05_14 = 1,
parameter w06_14 = 1,
parameter w07_14 = 1,
parameter w08_14 = 1,
parameter w09_14 = 1,
parameter w010_14 = 1,
parameter w011_14 = 1,
parameter w012_14 = 1,
parameter w013_14 = 1,
parameter w014_14 = 1,
parameter w015_14 = 1,
parameter w00_15 = 1,
parameter w01_15 = 1,
parameter w02_15 = 1,
parameter w03_15 = 1,
parameter w04_15 = 1,
parameter w05_15 = 1,
parameter w06_15 = 1,
parameter w07_15 = 1,
parameter w08_15 = 1,
parameter w09_15 = 1,
parameter w010_15 = 1,
parameter w011_15 = 1,
parameter w012_15 = 1,
parameter w013_15 = 1,
parameter w014_15 = 1,
parameter w015_15 = 1,
parameter w00_16 = 1,
parameter w01_16 = 1,
parameter w02_16 = 1,
parameter w03_16 = 1,
parameter w04_16 = 1,
parameter w05_16 = 1,
parameter w06_16 = 1,
parameter w07_16 = 1,
parameter w08_16 = 1,
parameter w09_16 = 1,
parameter w010_16 = 1,
parameter w011_16 = 1,
parameter w012_16 = 1,
parameter w013_16 = 1,
parameter w014_16 = 1,
parameter w015_16 = 1,
parameter w00_17 = 1,
parameter w01_17 = 1,
parameter w02_17 = 1,
parameter w03_17 = 1,
parameter w04_17 = 1,
parameter w05_17 = 1,
parameter w06_17 = 1,
parameter w07_17 = 1,
parameter w08_17 = 1,
parameter w09_17 = 1,
parameter w010_17 = 1,
parameter w011_17 = 1,
parameter w012_17 = 1,
parameter w013_17 = 1,
parameter w014_17 = 1,
parameter w015_17 = 1,
parameter w00_18 = 1,
parameter w01_18 = 1,
parameter w02_18 = 1,
parameter w03_18 = 1,
parameter w04_18 = 1,
parameter w05_18 = 1,
parameter w06_18 = 1,
parameter w07_18 = 1,
parameter w08_18 = 1,
parameter w09_18 = 1,
parameter w010_18 = 1,
parameter w011_18 = 1,
parameter w012_18 = 1,
parameter w013_18 = 1,
parameter w014_18 = 1,
parameter w015_18 = 1,
parameter w00_19 = 1,
parameter w01_19 = 1,
parameter w02_19 = 1,
parameter w03_19 = 1,
parameter w04_19 = 1,
parameter w05_19 = 1,
parameter w06_19 = 1,
parameter w07_19 = 1,
parameter w08_19 = 1,
parameter w09_19 = 1,
parameter w010_19 = 1,
parameter w011_19 = 1,
parameter w012_19 = 1,
parameter w013_19 = 1,
parameter w014_19 = 1,
parameter w015_19 = 1,
parameter w00_20 = 1,
parameter w01_20 = 1,
parameter w02_20 = 1,
parameter w03_20 = 1,
parameter w04_20 = 1,
parameter w05_20 = 1,
parameter w06_20 = 1,
parameter w07_20 = 1,
parameter w08_20 = 1,
parameter w09_20 = 1,
parameter w010_20 = 1,
parameter w011_20 = 1,
parameter w012_20 = 1,
parameter w013_20 = 1,
parameter w014_20 = 1,
parameter w015_20 = 1,
parameter w00_21 = 1,
parameter w01_21 = 1,
parameter w02_21 = 1,
parameter w03_21 = 1,
parameter w04_21 = 1,
parameter w05_21 = 1,
parameter w06_21 = 1,
parameter w07_21 = 1,
parameter w08_21 = 1,
parameter w09_21 = 1,
parameter w010_21 = 1,
parameter w011_21 = 1,
parameter w012_21 = 1,
parameter w013_21 = 1,
parameter w014_21 = 1,
parameter w015_21 = 1,
parameter w00_22 = 1,
parameter w01_22 = 1,
parameter w02_22 = 1,
parameter w03_22 = 1,
parameter w04_22 = 1,
parameter w05_22 = 1,
parameter w06_22 = 1,
parameter w07_22 = 1,
parameter w08_22 = 1,
parameter w09_22 = 1,
parameter w010_22 = 1,
parameter w011_22 = 1,
parameter w012_22 = 1,
parameter w013_22 = 1,
parameter w014_22 = 1,
parameter w015_22 = 1,
parameter w00_23 = 1,
parameter w01_23 = 1,
parameter w02_23 = 1,
parameter w03_23 = 1,
parameter w04_23 = 1,
parameter w05_23 = 1,
parameter w06_23 = 1,
parameter w07_23 = 1,
parameter w08_23 = 1,
parameter w09_23 = 1,
parameter w010_23 = 1,
parameter w011_23 = 1,
parameter w012_23 = 1,
parameter w013_23 = 1,
parameter w014_23 = 1,
parameter w015_23 = 1,
parameter w00_24 = 1,
parameter w01_24 = 1,
parameter w02_24 = 1,
parameter w03_24 = 1,
parameter w04_24 = 1,
parameter w05_24 = 1,
parameter w06_24 = 1,
parameter w07_24 = 1,
parameter w08_24 = 1,
parameter w09_24 = 1,
parameter w010_24 = 1,
parameter w011_24 = 1,
parameter w012_24 = 1,
parameter w013_24 = 1,
parameter w014_24 = 1,
parameter w015_24 = 1,
parameter bias_0 = 1,
parameter w10_0 = 1,
parameter w11_0 = 1,
parameter w12_0 = 1,
parameter w13_0 = 1,
parameter w14_0 = 1,
parameter w15_0 = 1,
parameter w16_0 = 1,
parameter w17_0 = 1,
parameter w18_0 = 1,
parameter w19_0 = 1,
parameter w110_0 = 1,
parameter w111_0 = 1,
parameter w112_0 = 1,
parameter w113_0 = 1,
parameter w114_0 = 1,
parameter w115_0 = 1,
parameter w10_1 = 1,
parameter w11_1 = 1,
parameter w12_1 = 1,
parameter w13_1 = 1,
parameter w14_1 = 1,
parameter w15_1 = 1,
parameter w16_1 = 1,
parameter w17_1 = 1,
parameter w18_1 = 1,
parameter w19_1 = 1,
parameter w110_1 = 1,
parameter w111_1 = 1,
parameter w112_1 = 1,
parameter w113_1 = 1,
parameter w114_1 = 1,
parameter w115_1 = 1,
parameter w10_2 = 1,
parameter w11_2 = 1,
parameter w12_2 = 1,
parameter w13_2 = 1,
parameter w14_2 = 1,
parameter w15_2 = 1,
parameter w16_2 = 1,
parameter w17_2 = 1,
parameter w18_2 = 1,
parameter w19_2 = 1,
parameter w110_2 = 1,
parameter w111_2 = 1,
parameter w112_2 = 1,
parameter w113_2 = 1,
parameter w114_2 = 1,
parameter w115_2 = 1,
parameter w10_3 = 1,
parameter w11_3 = 1,
parameter w12_3 = 1,
parameter w13_3 = 1,
parameter w14_3 = 1,
parameter w15_3 = 1,
parameter w16_3 = 1,
parameter w17_3 = 1,
parameter w18_3 = 1,
parameter w19_3 = 1,
parameter w110_3 = 1,
parameter w111_3 = 1,
parameter w112_3 = 1,
parameter w113_3 = 1,
parameter w114_3 = 1,
parameter w115_3 = 1,
parameter w10_4 = 1,
parameter w11_4 = 1,
parameter w12_4 = 1,
parameter w13_4 = 1,
parameter w14_4 = 1,
parameter w15_4 = 1,
parameter w16_4 = 1,
parameter w17_4 = 1,
parameter w18_4 = 1,
parameter w19_4 = 1,
parameter w110_4 = 1,
parameter w111_4 = 1,
parameter w112_4 = 1,
parameter w113_4 = 1,
parameter w114_4 = 1,
parameter w115_4 = 1,
parameter w10_5 = 1,
parameter w11_5 = 1,
parameter w12_5 = 1,
parameter w13_5 = 1,
parameter w14_5 = 1,
parameter w15_5 = 1,
parameter w16_5 = 1,
parameter w17_5 = 1,
parameter w18_5 = 1,
parameter w19_5 = 1,
parameter w110_5 = 1,
parameter w111_5 = 1,
parameter w112_5 = 1,
parameter w113_5 = 1,
parameter w114_5 = 1,
parameter w115_5 = 1,
parameter w10_6 = 1,
parameter w11_6 = 1,
parameter w12_6 = 1,
parameter w13_6 = 1,
parameter w14_6 = 1,
parameter w15_6 = 1,
parameter w16_6 = 1,
parameter w17_6 = 1,
parameter w18_6 = 1,
parameter w19_6 = 1,
parameter w110_6 = 1,
parameter w111_6 = 1,
parameter w112_6 = 1,
parameter w113_6 = 1,
parameter w114_6 = 1,
parameter w115_6 = 1,
parameter w10_7 = 1,
parameter w11_7 = 1,
parameter w12_7 = 1,
parameter w13_7 = 1,
parameter w14_7 = 1,
parameter w15_7 = 1,
parameter w16_7 = 1,
parameter w17_7 = 1,
parameter w18_7 = 1,
parameter w19_7 = 1,
parameter w110_7 = 1,
parameter w111_7 = 1,
parameter w112_7 = 1,
parameter w113_7 = 1,
parameter w114_7 = 1,
parameter w115_7 = 1,
parameter w10_8 = 1,
parameter w11_8 = 1,
parameter w12_8 = 1,
parameter w13_8 = 1,
parameter w14_8 = 1,
parameter w15_8 = 1,
parameter w16_8 = 1,
parameter w17_8 = 1,
parameter w18_8 = 1,
parameter w19_8 = 1,
parameter w110_8 = 1,
parameter w111_8 = 1,
parameter w112_8 = 1,
parameter w113_8 = 1,
parameter w114_8 = 1,
parameter w115_8 = 1,
parameter w10_9 = 1,
parameter w11_9 = 1,
parameter w12_9 = 1,
parameter w13_9 = 1,
parameter w14_9 = 1,
parameter w15_9 = 1,
parameter w16_9 = 1,
parameter w17_9 = 1,
parameter w18_9 = 1,
parameter w19_9 = 1,
parameter w110_9 = 1,
parameter w111_9 = 1,
parameter w112_9 = 1,
parameter w113_9 = 1,
parameter w114_9 = 1,
parameter w115_9 = 1,
parameter w10_10 = 1,
parameter w11_10 = 1,
parameter w12_10 = 1,
parameter w13_10 = 1,
parameter w14_10 = 1,
parameter w15_10 = 1,
parameter w16_10 = 1,
parameter w17_10 = 1,
parameter w18_10 = 1,
parameter w19_10 = 1,
parameter w110_10 = 1,
parameter w111_10 = 1,
parameter w112_10 = 1,
parameter w113_10 = 1,
parameter w114_10 = 1,
parameter w115_10 = 1,
parameter w10_11 = 1,
parameter w11_11 = 1,
parameter w12_11 = 1,
parameter w13_11 = 1,
parameter w14_11 = 1,
parameter w15_11 = 1,
parameter w16_11 = 1,
parameter w17_11 = 1,
parameter w18_11 = 1,
parameter w19_11 = 1,
parameter w110_11 = 1,
parameter w111_11 = 1,
parameter w112_11 = 1,
parameter w113_11 = 1,
parameter w114_11 = 1,
parameter w115_11 = 1,
parameter w10_12 = 1,
parameter w11_12 = 1,
parameter w12_12 = 1,
parameter w13_12 = 1,
parameter w14_12 = 1,
parameter w15_12 = 1,
parameter w16_12 = 1,
parameter w17_12 = 1,
parameter w18_12 = 1,
parameter w19_12 = 1,
parameter w110_12 = 1,
parameter w111_12 = 1,
parameter w112_12 = 1,
parameter w113_12 = 1,
parameter w114_12 = 1,
parameter w115_12 = 1,
parameter w10_13 = 1,
parameter w11_13 = 1,
parameter w12_13 = 1,
parameter w13_13 = 1,
parameter w14_13 = 1,
parameter w15_13 = 1,
parameter w16_13 = 1,
parameter w17_13 = 1,
parameter w18_13 = 1,
parameter w19_13 = 1,
parameter w110_13 = 1,
parameter w111_13 = 1,
parameter w112_13 = 1,
parameter w113_13 = 1,
parameter w114_13 = 1,
parameter w115_13 = 1,
parameter w10_14 = 1,
parameter w11_14 = 1,
parameter w12_14 = 1,
parameter w13_14 = 1,
parameter w14_14 = 1,
parameter w15_14 = 1,
parameter w16_14 = 1,
parameter w17_14 = 1,
parameter w18_14 = 1,
parameter w19_14 = 1,
parameter w110_14 = 1,
parameter w111_14 = 1,
parameter w112_14 = 1,
parameter w113_14 = 1,
parameter w114_14 = 1,
parameter w115_14 = 1,
parameter w10_15 = 1,
parameter w11_15 = 1,
parameter w12_15 = 1,
parameter w13_15 = 1,
parameter w14_15 = 1,
parameter w15_15 = 1,
parameter w16_15 = 1,
parameter w17_15 = 1,
parameter w18_15 = 1,
parameter w19_15 = 1,
parameter w110_15 = 1,
parameter w111_15 = 1,
parameter w112_15 = 1,
parameter w113_15 = 1,
parameter w114_15 = 1,
parameter w115_15 = 1,
parameter w10_16 = 1,
parameter w11_16 = 1,
parameter w12_16 = 1,
parameter w13_16 = 1,
parameter w14_16 = 1,
parameter w15_16 = 1,
parameter w16_16 = 1,
parameter w17_16 = 1,
parameter w18_16 = 1,
parameter w19_16 = 1,
parameter w110_16 = 1,
parameter w111_16 = 1,
parameter w112_16 = 1,
parameter w113_16 = 1,
parameter w114_16 = 1,
parameter w115_16 = 1,
parameter w10_17 = 1,
parameter w11_17 = 1,
parameter w12_17 = 1,
parameter w13_17 = 1,
parameter w14_17 = 1,
parameter w15_17 = 1,
parameter w16_17 = 1,
parameter w17_17 = 1,
parameter w18_17 = 1,
parameter w19_17 = 1,
parameter w110_17 = 1,
parameter w111_17 = 1,
parameter w112_17 = 1,
parameter w113_17 = 1,
parameter w114_17 = 1,
parameter w115_17 = 1,
parameter w10_18 = 1,
parameter w11_18 = 1,
parameter w12_18 = 1,
parameter w13_18 = 1,
parameter w14_18 = 1,
parameter w15_18 = 1,
parameter w16_18 = 1,
parameter w17_18 = 1,
parameter w18_18 = 1,
parameter w19_18 = 1,
parameter w110_18 = 1,
parameter w111_18 = 1,
parameter w112_18 = 1,
parameter w113_18 = 1,
parameter w114_18 = 1,
parameter w115_18 = 1,
parameter w10_19 = 1,
parameter w11_19 = 1,
parameter w12_19 = 1,
parameter w13_19 = 1,
parameter w14_19 = 1,
parameter w15_19 = 1,
parameter w16_19 = 1,
parameter w17_19 = 1,
parameter w18_19 = 1,
parameter w19_19 = 1,
parameter w110_19 = 1,
parameter w111_19 = 1,
parameter w112_19 = 1,
parameter w113_19 = 1,
parameter w114_19 = 1,
parameter w115_19 = 1,
parameter w10_20 = 1,
parameter w11_20 = 1,
parameter w12_20 = 1,
parameter w13_20 = 1,
parameter w14_20 = 1,
parameter w15_20 = 1,
parameter w16_20 = 1,
parameter w17_20 = 1,
parameter w18_20 = 1,
parameter w19_20 = 1,
parameter w110_20 = 1,
parameter w111_20 = 1,
parameter w112_20 = 1,
parameter w113_20 = 1,
parameter w114_20 = 1,
parameter w115_20 = 1,
parameter w10_21 = 1,
parameter w11_21 = 1,
parameter w12_21 = 1,
parameter w13_21 = 1,
parameter w14_21 = 1,
parameter w15_21 = 1,
parameter w16_21 = 1,
parameter w17_21 = 1,
parameter w18_21 = 1,
parameter w19_21 = 1,
parameter w110_21 = 1,
parameter w111_21 = 1,
parameter w112_21 = 1,
parameter w113_21 = 1,
parameter w114_21 = 1,
parameter w115_21 = 1,
parameter w10_22 = 1,
parameter w11_22 = 1,
parameter w12_22 = 1,
parameter w13_22 = 1,
parameter w14_22 = 1,
parameter w15_22 = 1,
parameter w16_22 = 1,
parameter w17_22 = 1,
parameter w18_22 = 1,
parameter w19_22 = 1,
parameter w110_22 = 1,
parameter w111_22 = 1,
parameter w112_22 = 1,
parameter w113_22 = 1,
parameter w114_22 = 1,
parameter w115_22 = 1,
parameter w10_23 = 1,
parameter w11_23 = 1,
parameter w12_23 = 1,
parameter w13_23 = 1,
parameter w14_23 = 1,
parameter w15_23 = 1,
parameter w16_23 = 1,
parameter w17_23 = 1,
parameter w18_23 = 1,
parameter w19_23 = 1,
parameter w110_23 = 1,
parameter w111_23 = 1,
parameter w112_23 = 1,
parameter w113_23 = 1,
parameter w114_23 = 1,
parameter w115_23 = 1,
parameter w10_24 = 1,
parameter w11_24 = 1,
parameter w12_24 = 1,
parameter w13_24 = 1,
parameter w14_24 = 1,
parameter w15_24 = 1,
parameter w16_24 = 1,
parameter w17_24 = 1,
parameter w18_24 = 1,
parameter w19_24 = 1,
parameter w110_24 = 1,
parameter w111_24 = 1,
parameter w112_24 = 1,
parameter w113_24 = 1,
parameter w114_24 = 1,
parameter w115_24 = 1,
parameter bias_1 = 2

)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
In_3,
In_4,
In_5,
In_6,
In_7,
In_8,
In_9,
In_10,
In_11,
In_12,
In_13,
In_14,
In_15,
valid_out,
Out_0,
Out_1
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,
In_1,
In_2,
In_3,
In_4,
In_5,
In_6,
In_7,
In_8,
In_9,
In_10,
In_11,
In_12,
In_13,
In_14,
In_15;
output reg valid_out;
output reg [Datawidth-1:0] Out_0;
output reg [Datawidth-1:0] Out_1;

// local
wire 	valid_out_0,valid_out_1;
wire [Datawidth-1:0] save_Out_0,save_Out_1;

// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		valid_out<=1'd0;
		Out_0<={Datawidth{1'b0}};
		Out_1<={Datawidth{1'b0}};	
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1 ==1'd1) begin
			Out_0<=save_Out_0;
			Out_1<=save_Out_1;			
			valid_out<=1'd1;
		end
		else begin
		valid_out<=1'd0;
		end
	end
end
 
CONV_2D_1_layer_16_channel_size_5 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0_0(w00_0),
.w0_1(w00_1),
.w0_2(w00_2),
.w0_3(w00_3),
.w0_4(w00_4),
.w0_5(w00_5),
.w0_6(w00_6),
.w0_7(w00_7),
.w0_8(w00_8),
.w0_9(w00_9),
.w0_10(w00_10),
.w0_11(w00_11),
.w0_12(w00_12),
.w0_13(w00_13),
.w0_14(w00_14),
.w0_15(w00_15),
.w0_16(w00_16),
.w0_17(w00_17),
.w0_18(w00_18),
.w0_19(w00_19),
.w0_20(w00_20),
.w0_21(w00_21),
.w0_22(w00_22),
.w0_23(w00_23),
.w0_24(w00_24),
.w1_0(w01_0),
.w1_1(w01_1),
.w1_2(w01_2),
.w1_3(w01_3),
.w1_4(w01_4),
.w1_5(w01_5),
.w1_6(w01_6),
.w1_7(w01_7),
.w1_8(w01_8),
.w1_9(w01_9),
.w1_10(w01_10),
.w1_11(w01_11),
.w1_12(w01_12),
.w1_13(w01_13),
.w1_14(w01_14),
.w1_15(w01_15),
.w1_16(w01_16),
.w1_17(w01_17),
.w1_18(w01_18),
.w1_19(w01_19),
.w1_20(w01_20),
.w1_21(w01_21),
.w1_22(w01_22),
.w1_23(w01_23),
.w1_24(w01_24),
.w2_0(w02_0),
.w2_1(w02_1),
.w2_2(w02_2),
.w2_3(w02_3),
.w2_4(w02_4),
.w2_5(w02_5),
.w2_6(w02_6),
.w2_7(w02_7),
.w2_8(w02_8),
.w2_9(w02_9),
.w2_10(w02_10),
.w2_11(w02_11),
.w2_12(w02_12),
.w2_13(w02_13),
.w2_14(w02_14),
.w2_15(w02_15),
.w2_16(w02_16),
.w2_17(w02_17),
.w2_18(w02_18),
.w2_19(w02_19),
.w2_20(w02_20),
.w2_21(w02_21),
.w2_22(w02_22),
.w2_23(w02_23),
.w2_24(w02_24),
.w3_0(w03_0),
.w3_1(w03_1),
.w3_2(w03_2),
.w3_3(w03_3),
.w3_4(w03_4),
.w3_5(w03_5),
.w3_6(w03_6),
.w3_7(w03_7),
.w3_8(w03_8),
.w3_9(w03_9),
.w3_10(w03_10),
.w3_11(w03_11),
.w3_12(w03_12),
.w3_13(w03_13),
.w3_14(w03_14),
.w3_15(w03_15),
.w3_16(w03_16),
.w3_17(w03_17),
.w3_18(w03_18),
.w3_19(w03_19),
.w3_20(w03_20),
.w3_21(w03_21),
.w3_22(w03_22),
.w3_23(w03_23),
.w3_24(w03_24),
.w4_0(w04_0),
.w4_1(w04_1),
.w4_2(w04_2),
.w4_3(w04_3),
.w4_4(w04_4),
.w4_5(w04_5),
.w4_6(w04_6),
.w4_7(w04_7),
.w4_8(w04_8),
.w4_9(w04_9),
.w4_10(w04_10),
.w4_11(w04_11),
.w4_12(w04_12),
.w4_13(w04_13),
.w4_14(w04_14),
.w4_15(w04_15),
.w4_16(w04_16),
.w4_17(w04_17),
.w4_18(w04_18),
.w4_19(w04_19),
.w4_20(w04_20),
.w4_21(w04_21),
.w4_22(w04_22),
.w4_23(w04_23),
.w4_24(w04_24),
.w5_0(w05_0),
.w5_1(w05_1),
.w5_2(w05_2),
.w5_3(w05_3),
.w5_4(w05_4),
.w5_5(w05_5),
.w5_6(w05_6),
.w5_7(w05_7),
.w5_8(w05_8),
.w5_9(w05_9),
.w5_10(w05_10),
.w5_11(w05_11),
.w5_12(w05_12),
.w5_13(w05_13),
.w5_14(w05_14),
.w5_15(w05_15),
.w5_16(w05_16),
.w5_17(w05_17),
.w5_18(w05_18),
.w5_19(w05_19),
.w5_20(w05_20),
.w5_21(w05_21),
.w5_22(w05_22),
.w5_23(w05_23),
.w5_24(w05_24),
.w6_0(w06_0),
.w6_1(w06_1),
.w6_2(w06_2),
.w6_3(w06_3),
.w6_4(w06_4),
.w6_5(w06_5),
.w6_6(w06_6),
.w6_7(w06_7),
.w6_8(w06_8),
.w6_9(w06_9),
.w6_10(w06_10),
.w6_11(w06_11),
.w6_12(w06_12),
.w6_13(w06_13),
.w6_14(w06_14),
.w6_15(w06_15),
.w6_16(w06_16),
.w6_17(w06_17),
.w6_18(w06_18),
.w6_19(w06_19),
.w6_20(w06_20),
.w6_21(w06_21),
.w6_22(w06_22),
.w6_23(w06_23),
.w6_24(w06_24),
.w7_0(w07_0),
.w7_1(w07_1),
.w7_2(w07_2),
.w7_3(w07_3),
.w7_4(w07_4),
.w7_5(w07_5),
.w7_6(w07_6),
.w7_7(w07_7),
.w7_8(w07_8),
.w7_9(w07_9),
.w7_10(w07_10),
.w7_11(w07_11),
.w7_12(w07_12),
.w7_13(w07_13),
.w7_14(w07_14),
.w7_15(w07_15),
.w7_16(w07_16),
.w7_17(w07_17),
.w7_18(w07_18),
.w7_19(w07_19),
.w7_20(w07_20),
.w7_21(w07_21),
.w7_22(w07_22),
.w7_23(w07_23),
.w7_24(w07_24),
.w8_0(w08_0),
.w8_1(w08_1),
.w8_2(w08_2),
.w8_3(w08_3),
.w8_4(w08_4),
.w8_5(w08_5),
.w8_6(w08_6),
.w8_7(w08_7),
.w8_8(w08_8),
.w8_9(w08_9),
.w8_10(w08_10),
.w8_11(w08_11),
.w8_12(w08_12),
.w8_13(w08_13),
.w8_14(w08_14),
.w8_15(w08_15),
.w8_16(w08_16),
.w8_17(w08_17),
.w8_18(w08_18),
.w8_19(w08_19),
.w8_20(w08_20),
.w8_21(w08_21),
.w8_22(w08_22),
.w8_23(w08_23),
.w8_24(w08_24),
.w9_0(w09_0),
.w9_1(w09_1),
.w9_2(w09_2),
.w9_3(w09_3),
.w9_4(w09_4),
.w9_5(w09_5),
.w9_6(w09_6),
.w9_7(w09_7),
.w9_8(w09_8),
.w9_9(w09_9),
.w9_10(w09_10),
.w9_11(w09_11),
.w9_12(w09_12),
.w9_13(w09_13),
.w9_14(w09_14),
.w9_15(w09_15),
.w9_16(w09_16),
.w9_17(w09_17),
.w9_18(w09_18),
.w9_19(w09_19),
.w9_20(w09_20),
.w9_21(w09_21),
.w9_22(w09_22),
.w9_23(w09_23),
.w9_24(w09_24),
.w10_0(w010_0),
.w10_1(w010_1),
.w10_2(w010_2),
.w10_3(w010_3),
.w10_4(w010_4),
.w10_5(w010_5),
.w10_6(w010_6),
.w10_7(w010_7),
.w10_8(w010_8),
.w10_9(w010_9),
.w10_10(w010_10),
.w10_11(w010_11),
.w10_12(w010_12),
.w10_13(w010_13),
.w10_14(w010_14),
.w10_15(w010_15),
.w10_16(w010_16),
.w10_17(w010_17),
.w10_18(w010_18),
.w10_19(w010_19),
.w10_20(w010_20),
.w10_21(w010_21),
.w10_22(w010_22),
.w10_23(w010_23),
.w10_24(w010_24),
.w11_0(w011_0),
.w11_1(w011_1),
.w11_2(w011_2),
.w11_3(w011_3),
.w11_4(w011_4),
.w11_5(w011_5),
.w11_6(w011_6),
.w11_7(w011_7),
.w11_8(w011_8),
.w11_9(w011_9),
.w11_10(w011_10),
.w11_11(w011_11),
.w11_12(w011_12),
.w11_13(w011_13),
.w11_14(w011_14),
.w11_15(w011_15),
.w11_16(w011_16),
.w11_17(w011_17),
.w11_18(w011_18),
.w11_19(w011_19),
.w11_20(w011_20),
.w11_21(w011_21),
.w11_22(w011_22),
.w11_23(w011_23),
.w11_24(w011_24),
.w12_0(w012_0),
.w12_1(w012_1),
.w12_2(w012_2),
.w12_3(w012_3),
.w12_4(w012_4),
.w12_5(w012_5),
.w12_6(w012_6),
.w12_7(w012_7),
.w12_8(w012_8),
.w12_9(w012_9),
.w12_10(w012_10),
.w12_11(w012_11),
.w12_12(w012_12),
.w12_13(w012_13),
.w12_14(w012_14),
.w12_15(w012_15),
.w12_16(w012_16),
.w12_17(w012_17),
.w12_18(w012_18),
.w12_19(w012_19),
.w12_20(w012_20),
.w12_21(w012_21),
.w12_22(w012_22),
.w12_23(w012_23),
.w12_24(w012_24),
.w13_0(w013_0),
.w13_1(w013_1),
.w13_2(w013_2),
.w13_3(w013_3),
.w13_4(w013_4),
.w13_5(w013_5),
.w13_6(w013_6),
.w13_7(w013_7),
.w13_8(w013_8),
.w13_9(w013_9),
.w13_10(w013_10),
.w13_11(w013_11),
.w13_12(w013_12),
.w13_13(w013_13),
.w13_14(w013_14),
.w13_15(w013_15),
.w13_16(w013_16),
.w13_17(w013_17),
.w13_18(w013_18),
.w13_19(w013_19),
.w13_20(w013_20),
.w13_21(w013_21),
.w13_22(w013_22),
.w13_23(w013_23),
.w13_24(w013_24),
.w14_0(w014_0),
.w14_1(w014_1),
.w14_2(w014_2),
.w14_3(w014_3),
.w14_4(w014_4),
.w14_5(w014_5),
.w14_6(w014_6),
.w14_7(w014_7),
.w14_8(w014_8),
.w14_9(w014_9),
.w14_10(w014_10),
.w14_11(w014_11),
.w14_12(w014_12),
.w14_13(w014_13),
.w14_14(w014_14),
.w14_15(w014_15),
.w14_16(w014_16),
.w14_17(w014_17),
.w14_18(w014_18),
.w14_19(w014_19),
.w14_20(w014_20),
.w14_21(w014_21),
.w14_22(w014_22),
.w14_23(w014_23),
.w14_24(w014_24),
.w15_0(w015_0),
.w15_1(w015_1),
.w15_2(w015_2),
.w15_3(w015_3),
.w15_4(w015_4),
.w15_5(w015_5),
.w15_6(w015_6),
.w15_7(w015_7),
.w15_8(w015_8),
.w15_9(w015_9),
.w15_10(w015_10),
.w15_11(w015_11),
.w15_12(w015_12),
.w15_13(w015_13),
.w15_14(w015_14),
.w15_15(w015_15),
.w15_16(w015_16),
.w15_17(w015_17),
.w15_18(w015_18),
.w15_19(w015_19),
.w15_20(w015_20),
.w15_21(w015_21),
.w15_22(w015_22),
.w15_23(w015_23),
.w15_24(w015_24),
.bias(bias_0)
) block_1kernel_0
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.In_12(In_12),
.In_13(In_13),
.In_14(In_14),
.In_15(In_15),
.Out(save_Out_0),
.valid_out(valid_out_0)
);

 
CONV_2D_1_layer_16_channel_size_5 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0_0(w10_0),
.w0_1(w10_1),
.w0_2(w10_2),
.w0_3(w10_3),
.w0_4(w10_4),
.w0_5(w10_5),
.w0_6(w10_6),
.w0_7(w10_7),
.w0_8(w10_8),
.w0_9(w10_9),
.w0_10(w10_10),
.w0_11(w10_11),
.w0_12(w10_12),
.w0_13(w10_13),
.w0_14(w10_14),
.w0_15(w10_15),
.w0_16(w10_16),
.w0_17(w10_17),
.w0_18(w10_18),
.w0_19(w10_19),
.w0_20(w10_20),
.w0_21(w10_21),
.w0_22(w10_22),
.w0_23(w10_23),
.w0_24(w10_24),
.w1_0(w11_0),
.w1_1(w11_1),
.w1_2(w11_2),
.w1_3(w11_3),
.w1_4(w11_4),
.w1_5(w11_5),
.w1_6(w11_6),
.w1_7(w11_7),
.w1_8(w11_8),
.w1_9(w11_9),
.w1_10(w11_10),
.w1_11(w11_11),
.w1_12(w11_12),
.w1_13(w11_13),
.w1_14(w11_14),
.w1_15(w11_15),
.w1_16(w11_16),
.w1_17(w11_17),
.w1_18(w11_18),
.w1_19(w11_19),
.w1_20(w11_20),
.w1_21(w11_21),
.w1_22(w11_22),
.w1_23(w11_23),
.w1_24(w11_24),
.w2_0(w12_0),
.w2_1(w12_1),
.w2_2(w12_2),
.w2_3(w12_3),
.w2_4(w12_4),
.w2_5(w12_5),
.w2_6(w12_6),
.w2_7(w12_7),
.w2_8(w12_8),
.w2_9(w12_9),
.w2_10(w12_10),
.w2_11(w12_11),
.w2_12(w12_12),
.w2_13(w12_13),
.w2_14(w12_14),
.w2_15(w12_15),
.w2_16(w12_16),
.w2_17(w12_17),
.w2_18(w12_18),
.w2_19(w12_19),
.w2_20(w12_20),
.w2_21(w12_21),
.w2_22(w12_22),
.w2_23(w12_23),
.w2_24(w12_24),
.w3_0(w13_0),
.w3_1(w13_1),
.w3_2(w13_2),
.w3_3(w13_3),
.w3_4(w13_4),
.w3_5(w13_5),
.w3_6(w13_6),
.w3_7(w13_7),
.w3_8(w13_8),
.w3_9(w13_9),
.w3_10(w13_10),
.w3_11(w13_11),
.w3_12(w13_12),
.w3_13(w13_13),
.w3_14(w13_14),
.w3_15(w13_15),
.w3_16(w13_16),
.w3_17(w13_17),
.w3_18(w13_18),
.w3_19(w13_19),
.w3_20(w13_20),
.w3_21(w13_21),
.w3_22(w13_22),
.w3_23(w13_23),
.w3_24(w13_24),
.w4_0(w14_0),
.w4_1(w14_1),
.w4_2(w14_2),
.w4_3(w14_3),
.w4_4(w14_4),
.w4_5(w14_5),
.w4_6(w14_6),
.w4_7(w14_7),
.w4_8(w14_8),
.w4_9(w14_9),
.w4_10(w14_10),
.w4_11(w14_11),
.w4_12(w14_12),
.w4_13(w14_13),
.w4_14(w14_14),
.w4_15(w14_15),
.w4_16(w14_16),
.w4_17(w14_17),
.w4_18(w14_18),
.w4_19(w14_19),
.w4_20(w14_20),
.w4_21(w14_21),
.w4_22(w14_22),
.w4_23(w14_23),
.w4_24(w14_24),
.w5_0(w15_0),
.w5_1(w15_1),
.w5_2(w15_2),
.w5_3(w15_3),
.w5_4(w15_4),
.w5_5(w15_5),
.w5_6(w15_6),
.w5_7(w15_7),
.w5_8(w15_8),
.w5_9(w15_9),
.w5_10(w15_10),
.w5_11(w15_11),
.w5_12(w15_12),
.w5_13(w15_13),
.w5_14(w15_14),
.w5_15(w15_15),
.w5_16(w15_16),
.w5_17(w15_17),
.w5_18(w15_18),
.w5_19(w15_19),
.w5_20(w15_20),
.w5_21(w15_21),
.w5_22(w15_22),
.w5_23(w15_23),
.w5_24(w15_24),
.w6_0(w16_0),
.w6_1(w16_1),
.w6_2(w16_2),
.w6_3(w16_3),
.w6_4(w16_4),
.w6_5(w16_5),
.w6_6(w16_6),
.w6_7(w16_7),
.w6_8(w16_8),
.w6_9(w16_9),
.w6_10(w16_10),
.w6_11(w16_11),
.w6_12(w16_12),
.w6_13(w16_13),
.w6_14(w16_14),
.w6_15(w16_15),
.w6_16(w16_16),
.w6_17(w16_17),
.w6_18(w16_18),
.w6_19(w16_19),
.w6_20(w16_20),
.w6_21(w16_21),
.w6_22(w16_22),
.w6_23(w16_23),
.w6_24(w16_24),
.w7_0(w17_0),
.w7_1(w17_1),
.w7_2(w17_2),
.w7_3(w17_3),
.w7_4(w17_4),
.w7_5(w17_5),
.w7_6(w17_6),
.w7_7(w17_7),
.w7_8(w17_8),
.w7_9(w17_9),
.w7_10(w17_10),
.w7_11(w17_11),
.w7_12(w17_12),
.w7_13(w17_13),
.w7_14(w17_14),
.w7_15(w17_15),
.w7_16(w17_16),
.w7_17(w17_17),
.w7_18(w17_18),
.w7_19(w17_19),
.w7_20(w17_20),
.w7_21(w17_21),
.w7_22(w17_22),
.w7_23(w17_23),
.w7_24(w17_24),
.w8_0(w18_0),
.w8_1(w18_1),
.w8_2(w18_2),
.w8_3(w18_3),
.w8_4(w18_4),
.w8_5(w18_5),
.w8_6(w18_6),
.w8_7(w18_7),
.w8_8(w18_8),
.w8_9(w18_9),
.w8_10(w18_10),
.w8_11(w18_11),
.w8_12(w18_12),
.w8_13(w18_13),
.w8_14(w18_14),
.w8_15(w18_15),
.w8_16(w18_16),
.w8_17(w18_17),
.w8_18(w18_18),
.w8_19(w18_19),
.w8_20(w18_20),
.w8_21(w18_21),
.w8_22(w18_22),
.w8_23(w18_23),
.w8_24(w18_24),
.w9_0(w19_0),
.w9_1(w19_1),
.w9_2(w19_2),
.w9_3(w19_3),
.w9_4(w19_4),
.w9_5(w19_5),
.w9_6(w19_6),
.w9_7(w19_7),
.w9_8(w19_8),
.w9_9(w19_9),
.w9_10(w19_10),
.w9_11(w19_11),
.w9_12(w19_12),
.w9_13(w19_13),
.w9_14(w19_14),
.w9_15(w19_15),
.w9_16(w19_16),
.w9_17(w19_17),
.w9_18(w19_18),
.w9_19(w19_19),
.w9_20(w19_20),
.w9_21(w19_21),
.w9_22(w19_22),
.w9_23(w19_23),
.w9_24(w19_24),
.w10_0(w110_0),
.w10_1(w110_1),
.w10_2(w110_2),
.w10_3(w110_3),
.w10_4(w110_4),
.w10_5(w110_5),
.w10_6(w110_6),
.w10_7(w110_7),
.w10_8(w110_8),
.w10_9(w110_9),
.w10_10(w110_10),
.w10_11(w110_11),
.w10_12(w110_12),
.w10_13(w110_13),
.w10_14(w110_14),
.w10_15(w110_15),
.w10_16(w110_16),
.w10_17(w110_17),
.w10_18(w110_18),
.w10_19(w110_19),
.w10_20(w110_20),
.w10_21(w110_21),
.w10_22(w110_22),
.w10_23(w110_23),
.w10_24(w110_24),
.w11_0(w111_0),
.w11_1(w111_1),
.w11_2(w111_2),
.w11_3(w111_3),
.w11_4(w111_4),
.w11_5(w111_5),
.w11_6(w111_6),
.w11_7(w111_7),
.w11_8(w111_8),
.w11_9(w111_9),
.w11_10(w111_10),
.w11_11(w111_11),
.w11_12(w111_12),
.w11_13(w111_13),
.w11_14(w111_14),
.w11_15(w111_15),
.w11_16(w111_16),
.w11_17(w111_17),
.w11_18(w111_18),
.w11_19(w111_19),
.w11_20(w111_20),
.w11_21(w111_21),
.w11_22(w111_22),
.w11_23(w111_23),
.w11_24(w111_24),
.w12_0(w112_0),
.w12_1(w112_1),
.w12_2(w112_2),
.w12_3(w112_3),
.w12_4(w112_4),
.w12_5(w112_5),
.w12_6(w112_6),
.w12_7(w112_7),
.w12_8(w112_8),
.w12_9(w112_9),
.w12_10(w112_10),
.w12_11(w112_11),
.w12_12(w112_12),
.w12_13(w112_13),
.w12_14(w112_14),
.w12_15(w112_15),
.w12_16(w112_16),
.w12_17(w112_17),
.w12_18(w112_18),
.w12_19(w112_19),
.w12_20(w112_20),
.w12_21(w112_21),
.w12_22(w112_22),
.w12_23(w112_23),
.w12_24(w112_24),
.w13_0(w113_0),
.w13_1(w113_1),
.w13_2(w113_2),
.w13_3(w113_3),
.w13_4(w113_4),
.w13_5(w113_5),
.w13_6(w113_6),
.w13_7(w113_7),
.w13_8(w113_8),
.w13_9(w113_9),
.w13_10(w113_10),
.w13_11(w113_11),
.w13_12(w113_12),
.w13_13(w113_13),
.w13_14(w113_14),
.w13_15(w113_15),
.w13_16(w113_16),
.w13_17(w113_17),
.w13_18(w113_18),
.w13_19(w113_19),
.w13_20(w113_20),
.w13_21(w113_21),
.w13_22(w113_22),
.w13_23(w113_23),
.w13_24(w113_24),
.w14_0(w114_0),
.w14_1(w114_1),
.w14_2(w114_2),
.w14_3(w114_3),
.w14_4(w114_4),
.w14_5(w114_5),
.w14_6(w114_6),
.w14_7(w114_7),
.w14_8(w114_8),
.w14_9(w114_9),
.w14_10(w114_10),
.w14_11(w114_11),
.w14_12(w114_12),
.w14_13(w114_13),
.w14_14(w114_14),
.w14_15(w114_15),
.w14_16(w114_16),
.w14_17(w114_17),
.w14_18(w114_18),
.w14_19(w114_19),
.w14_20(w114_20),
.w14_21(w114_21),
.w14_22(w114_22),
.w14_23(w114_23),
.w14_24(w114_24),
.w15_0(w115_0),
.w15_1(w115_1),
.w15_2(w115_2),
.w15_3(w115_3),
.w15_4(w115_4),
.w15_5(w115_5),
.w15_6(w115_6),
.w15_7(w115_7),
.w15_8(w115_8),
.w15_9(w115_9),
.w15_10(w115_10),
.w15_11(w115_11),
.w15_12(w115_12),
.w15_13(w115_13),
.w15_14(w115_14),
.w15_15(w115_15),
.w15_16(w115_16),
.w15_17(w115_17),
.w15_18(w115_18),
.w15_19(w115_19),
.w15_20(w115_20),
.w15_21(w115_21),
.w15_22(w115_22),
.w15_23(w115_23),
.w15_24(w115_24),
.bias(bias_1)
) block_1kernel_1
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.In_12(In_12),
.In_13(In_13),
.In_14(In_14),
.In_15(In_15),
.Out(save_Out_1),
.valid_out(valid_out_1)
);


endmodule 