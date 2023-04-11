FROM centos:7
RUN yum update -y 
RUN  yum install -y httpd
CMD ["httpd", "-D", "FOREGROUND"]
