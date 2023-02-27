FROM centos:latest
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install zip httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/seo-master.zip /var/www/html
WORKDIR /var/www/html
RUN unzip seo-master.zip 
RUN rm -rf seo-master.zip  &&\
      cp -rf seo-agency-website-template/* . &&\
      rm -rf seo-agency-website-template
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
