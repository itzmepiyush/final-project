FROM rupeshsaini09/centos
RUN yum install httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/foste.zip
WORKDIR /var/www/html
RUN unzip foste.zip
     rm -rf foste.zip &&\
    cp -rf html/* . &&\
    rm -rf html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
