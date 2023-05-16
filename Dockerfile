FROM centos:7
RUN yum update -y 
RUN yum install -y httpd
RUN echo -e 'Hello World\nCI Jenkins\nCD ArgoCD' > /var/www/html/index.html
CMD ["httpd", "-D", "FOREGROUND"]


