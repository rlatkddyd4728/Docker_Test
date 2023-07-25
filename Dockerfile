# Base image with Python and AWS CLI
FROM python:3
FROM centos:7
RUN yum update -y
RUN pip install aws-cli 
RUN yum install -y httpd
RUN echo -e 'Hello World CI Jenkins CD ArgoCD V12' > /var/www/html/index.html
CMD ["httpd", "-D", "FOREGROUND"]
