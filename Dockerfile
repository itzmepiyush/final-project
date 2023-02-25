FROM rupeshsaini09/centos
RUN yum install zip httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/digitalex.zip /var/www/html
WORKDIR /var.www.html
RUN unzip digitalex.zip
RUn rm -rf digitalex.zip 
    cp -rf html/* . 
    rm -rf html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
