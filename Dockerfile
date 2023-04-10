FROM centos:7
RUN yum update -y &&  yum install -y httpd
CMD ["httpd", "-D", "FOREGROUND"]
