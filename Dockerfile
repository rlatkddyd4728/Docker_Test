FROM centos:8

RUN yum update -y & yum install -y httpd
