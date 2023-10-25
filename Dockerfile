# 베이스 이미지로 php:7.4-apache를 사용합니다.
FROM php:7.4-apache

# index.html과 healthz.php 파일을 복사합니다.
COPY index.html /var/www/html/
COPY healthz.php /var/www/html/
EXPOSE 80

 
# Base image with Python and AWS CLI
# FROM centos:7
# RUN yum update -y
# RUN yum install -y httpd
# RUN echo -e 'Hello World AWS ECS test Ver 2020' > /var/www/html/index.html
# CMD ["httpd", "-D", "FOREGROUND"]