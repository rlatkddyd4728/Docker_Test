# Base image with Python and AWS CLI
FROM centos:7
RUN yum update -y
RUN yum install -y httpd
RUN echo -e 'Hello World TEST ECS ver 66' > /var/www/html/index.html
CMD ["httpd", "-D", "FOREGROUND"]
