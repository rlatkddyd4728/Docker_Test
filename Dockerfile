FROM centos:7
RUN yum update -y 
RUN yum install -y httpd
RUN echo -e 'Hello World CI Jenkins CD ArgoCD V4' > /var/www/html/index.html
CMD ["httpd", "-D", "FOREGROUND"]
