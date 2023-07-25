# Base image with Python and AWS CLI
FROM python:3

# AWS CLI 설치
RUN pip install awscli

# 기본 작업 디렉토리 설정 (선택 사항)
WORKDIR /app

# 이미지에서 실행할 명령어 (예시로 AWS CLI 버전 출력)
CMD ["aws", "--version"]
# FROM centos:7
# RUN yum update -y 
# RUN yum install -y httpd
# RUN echo -e 'Hello World CI Jenkins CD ArgoCD V12' > /var/www/html/index.html
# CMD ["httpd", "-D", "FOREGROUND"]
