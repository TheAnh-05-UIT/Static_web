# Dùng image nginx chính thức
FROM nginx:latest

# Xóa file mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Sao chép toàn bộ mã nguồn web vào thư mục gốc của Nginx
COPY . /usr/share/nginx/html

# Mở cổng 80 cho web server
EXPOSE 80

# Lệnh chạy Nginx ở chế độ foreground (để container không tắt)
CMD ["nginx", "-g", "daemon off;"]

# docker build -t my-static-web .
# docker run -d -p 8080:8000 --name static-web my-static-web

