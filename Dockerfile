FROM ubi7/ubi:7.7
MAINTAINER Chandra Prakash <cprakash@qcsdclabs.com>
LABEL description="A basic Apache container on RHEL 7 UBI"
RUN yum install -y httpd && \
    yum install java -y && \
    yum install unzip -y && \
    yum clean all

RUN echo "Hello from Dockerfile" > /usr/share/httpd/noindex/index.html

EXPOSE 80

ENTRYPOINT ["httpd", "-D", "FOREGROUND"]

