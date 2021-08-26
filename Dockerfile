FROM ubi7/ubi:7.7
MAINTAINER danil
LABEL description="A custome apache container based on UBI 7"
RUN yum install -y httpd && \
    yum clean all
RUN echo "Hello Red hat team" > /var/www/html/index.html
EXPOSE 80
CMD ["httpd","-D","FOREGROUND"]
