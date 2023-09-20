# # 베이스 이미지로 php:7.4-apache를 사용합니다.
# FROM php:7.4-apache

# # index.html과 healthz.php 파일을 복사합니다.
# COPY index.html /var/www/html/
# COPY healthz.php /var/www/html/

# Base image with Python and AWS CLI
FROM centos:7
RUN yum update -y
RUN yum install -y httpd
RUN echo -e 'Hello World AWS EKS CI/CD TEST ver3' > /var/www/html/index.html
RUN sed -i "s#LogLevel warn#LogLevel debug#g" /etc/httpd/conf/httpd.conf
RUN sed -i 's#    CustomLog "logs/access_log" combined#    CustomLog "/var/log/msrnd" combined#g' /etc/httpd/conf/httpd.conf
RUN ln -sf /dev/stdout /var/log/msrnd
CMD ["httpd", "-D", "FOREGROUND"]

