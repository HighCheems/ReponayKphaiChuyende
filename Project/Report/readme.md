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

# Kế hoạch tiếp theo
## 1/6:
### HDL:
Bắt đầu tách thiết kế như block diagram mới và thêm vào số floating point. Tìm cách kết nối các khối nhỏ thành khối lớn có độ sâu.
### Soft:
Thay đổi tập train, bổ sung tập test
