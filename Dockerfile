# 사용할 베이스 이미지를 선택합니다. Java 11을 사용하는 OpenJDK 이미지를 사용합니다.
FROM openjdk:11-jre-slim

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 빌드된 Spring Boot JAR 파일을 복사합니다. 애플리케이션의 JAR 파일 이름에 따라 다를 수 있습니다.
COPY target/your-spring-app.jar app.jar

# 애플리케이션을 실행합니다. Spring Boot 애플리케이션을 8080 포트에서 실행합니다.
CMD ["java", "-jar", "app.jar"]

# Docker 컨테이너가 8080 포트에서 리스닝하도록 설정합니다.
EXPOSE 80

# # Base image with Python and AWS CLI
# FROM centos:7
# RUN yum update -y
# RUN yum install -y httpd
# RUN echo -e 'Hello World AWS EKS CI/CD TEST' > /var/www/html/index.html
# CMD ["httpd", "-D", "FOREGROUND"]
