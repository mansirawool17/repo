FROM centos:latest
MAINTAINER manasideepakrawool@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/ogistic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip ogistic.zip
RUN cp -rvf ogistic/* .
RUN rm -rf ogistic ogistic.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
