# Sử dụng image Ubuntu có sẵn g++
FROM ubuntu:22.04

# Cài compiler và thư viện cần thiết
RUN apt-get update && apt-get install -y g++

# Tạo thư mục làm việc trong container
WORKDIR /app

# Sao chép mã nguồn vào container
COPY . .

# Build app
RUN g++ -o myapp main.cpp

# Chạy app khi container khởi động
CMD ["./myapp"]
