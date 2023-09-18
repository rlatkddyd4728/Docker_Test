# 베이스 이미지로 ubuntu:20.04 를 사용합니다.
FROM ubuntu:20.04

# apache2 와 php7.4 모듈을 설치합니다.
RUN apt-get update && apt-get install -y apache2 libapache2-mod-php7.4

# /var/www/html 디렉토리에 index.php 파일을 생성합니다.
# index.php 파일은 phpinfo() 함수를 호출하여 php 정보를 출력합니다.
RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

# /var/www/html 디렉토리에 healthz.php 파일을 생성합니다.
# healthz.php 파일은 200 OK 응답과 "OK" 문자열을 출력합니다.
RUN echo "<?php http_response_code(200); echo 'OK'; ?>" > /var/www/html/healthz.php

RUN echo -e 'Hello World AWS EKS CI/CD TEST' > /var/www/html/index.html

# apache2 서비스를 활성화하고, 80 포트를 열어줍니다.
RUN systemctl enable apache2
EXPOSE 80

# 컨테이너가 실행될 때 apache2 서비스를 시작하는 명령어를 정의합니다.
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


# Base image with Python and AWS CLI
# FROM centos:7
# RUN yum update -y
# RUN yum install -y httpd
# RUN echo -e 'Hello World AWS EKS CI/CD TEST' > /var/www/html/index.html
# CMD ["httpd", "-D", "FOREGROUND"]
