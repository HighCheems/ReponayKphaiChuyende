# Tiến độ thực hiện

## 11/5
### HDL:
Thực hiện thử kernel 3x3 không có Padding , không có reLU , stride=1.
#### Kết quả: Chính xác với hình 224x224 Gray.
### Soft:
Thực hiện Sobel Filer Gx, so sánh kết quả HDL vs Python
#### Kết quả: HDL và Python cho kết quả giốg nhau
## 18/5
### HDL:
Thực hiện, mô phỏng: kernel 3x3, 5x5, 7x7 có Padding và ReLU, tinh chỉnh được stride.
#### Kết quả: Chính xác với số decimal.
### Soft:
Train tập dog breed gồm 10 class, 1747 ảnh.
#### Kết quả: Đúng với một vài giống chó.
## 25/5
### HDL:
Thiết kế block diagram, tinh chỉnh thiết kế, khối avg, max.
#### Kết quả: Chính xác với số decimal.
### Soft:
Train lại tập dog breed ban đầu thêm nhiều lần.
#### Kết quả: Đúng với nhiều giống chó hơn nhưng vẫn chưa đạt.
## 1/6:
### HDL:
Có mẫu file để bắt đầu quá trình gen.
#### Kết quả:
### Soft:
Thay đổi thông số train
#### Kết quả: Độ chính xác cao. Đã có file weights ở dạng decimal.
## 8/6:
### HDL: 
Gen được các module cơ bản, tinh chỉnh lại thiết kế theo 
### Soft:
Gen verilog module: conv, max, avg theo từng số lượng kênh (channel).
## 22/6:
### HDL: 
Sau khi gen được file, đổi thiết kế phù hợp với mạng train tinh chỉnh (tiny_model).
### Soft:
Gen verilog module: conv, max, avg có số lượng kênh và depth theo mạng train tinh chỉnh mới, giảm số depth của từng khối để giảm độ nặng của model.
## 27/6:
### HDL: 
Ghép được stage 1 , stage 2 , stage 3 , stage 4 bao gồm các khối inception liên kết. Đã kiểm tra, đạt kết quả mong muốn.
# Kế hoạch tiếp theo
## 28/6:
## HDL: 
Ghép tiếp stage 5 và full connected vào mạch.
Có được mạch hoàn chỉnh
-> Test và đổi toàn bộ thiết kế sang floating point.
-> Nạp weights chính thức vào mạch (nạp ở từng stage qua parameter) theo số floating point.
