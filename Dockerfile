FROM centos:7
RUN yum update -y
RUN yum install -y httpd
RUN echo 'Hello World!' > /var/www/html/index.html
CMD ["httpd", "-D", "FOREGROUND"]
