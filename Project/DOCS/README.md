# Tổng quan
Kiến trúc truyền thống của một mạng CNN - Mạng neural tích chập (Convolutional neural networks), còn được biết đến với tên CNNs, là một dạng mạng neural được cấu thành bởi các tầng sau:
![img](https://stanford.edu/~shervine/teaching/cs-230/illustrations/architecture-cnn-vi.jpeg?6b63c596f802c81d7cff2028ae6572ab)
Tầng tích chập và tầng pooling có thể được hiệu chỉnh theo các siêu tham số (hyperparameters) được mô tả ở những phần tiếp theo.
# Các kiểu tầng
## Tầng tích chập (CONV)
Tầng tích chập (CONV) sử dụng các bộ lọc để thực hiện phép tích chập khi đưa chúng đi qua đầu vào II theo các chiều của nó. Các siêu tham số của các bộ lọc này bao gồm kích thước bộ lọc FF và độ trượt (stride) SS. Kết quả đầu ra OO được gọi là feature map hay activation map.
![gif](https://stanford.edu/~shervine/teaching/cs-230/illustrations/convolution-layer-a.png?1c517e00cb8d709baf32fc3d39ebae67)
## Tầng Pooling (POOL)
Tầng pooling (POOL) là một phép downsampling, thường được sử dụng sau tầng tích chập, giúp tăng tính bất biến không gian. Cụ thể, max pooling và average pooling là những dạng pooling đặc biệt, mà tương ứng là trong đó giá trị lớn nhất và giá trị trung bình được lấy ra.
| Kiểu      | Max pooling          | Average pooling  |
| ----------|--------------------| ----------------|
| Chức năng | Từng phép pooling chọn giá trị lớn nhất trong khu vực mà nó đang được áp dụng | Từng phép pooling tính trung bình các giá trị trong khu vực mà nó đang được áp dụng |
| Minh họa  | ![gif](https://stanford.edu/~shervine/teaching/cs-230/illustrations/max-pooling-a.png?711b14799d07f9306864695e2713ae07) | ![gif](https://stanford.edu/~shervine/teaching/cs-230/illustrations/average-pooling-a.png?58f9ab6d61248c3ec8d526ef65763d2f) |
| Nhận xét  | Bảo toàn các đặc trưng đã phát hiện; Được sử dụng thường xuyên | Giảm kích thước feature map; Được sử dụng trong mạng LeNet |
## Tầng Fully Connected (FC)
Tầng kết nối đầy đủ (FC) nhận đầu vào là các dữ liệu đã được làm phẳng, mà mỗi đầu vào đó được kết nối đến tất cả neuron. Trong mô hình mạng CNNs, các tầng kết nối đầy đủ thường được tìm thấy ở cuối mạng và được dùng để tối ưu hóa mục tiêu của mạng ví dụ như độ chính xác của lớp.
![img](https://stanford.edu/~shervine/teaching/cs-230/illustrations/fully-connected-ltr.png?32caf9e07c79d652faa292812579d063)

## Một số hàm thường gặp
### Rectified Linear Unit: 
##### Tầng rectified linear unit (ReLU) là một hàm kích hoạt g được sử dụng trên tất cả các thành phần. Mục đích của nó là tăng tính phi tuyến tính cho mạng. Những biến thể khác của ReLU được tổng hợp ở bảng dưới:
|ReLU           |Leaky ReLU                |ELU                         |
| --------------|------------------------|---------------------------|
|g(z)=max(0,z)  |g(z)=max(ϵz,z)  với ϵ≪1  |g(z)=max(α(e^z−1),z) với α≪1 |
|[image](https://user-images.githubusercontent.com/79900186/115330150-b6a3a180-a1bd-11eb-9439-d348e3ad1e37.png)|![image](https://user-images.githubusercontent.com/79900186/115330197-c9b67180-a1bd-11eb-8f23-f81add56e28f.png)|![image](https://user-images.githubusercontent.com/79900186/115330222-d63aca00-a1bd-11eb-975d-660ed41932da.png)| 
|               | Khắc phục vấn đề ReLU chết cho những giá trị âm | Khả vi tại mọi nơi |
### Softmax: 
##### Áp dụng một hàm mũ tiêu chuẩn cho mỗi phần tử của lớp đầu ra, và sau đó chuẩn hóa các giá trị này bằng cách chia cho tổng của tất cả các cấp số nhân. Làm như vậy đảm bảo tổng của tất cả các giá trị lũy thừa cộng lại bằng 1.
![img](softmax.PNG)
# Nguồn Tham khảo
https://stanford.edu/~shervine/l/vi/teaching/cs-230/cheatsheet-convolutional-neural-networks

