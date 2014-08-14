#
#
# Apache w/ Php Dockerfile
#
#

# Pull base image
FROM ubuntu:latest

# Install Apache and Php5
RUN apt-get -qq update
RUN apt-get -qqy install apache2 php5 libapache2-mod-php5 php5-mysql

# clean APT
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose ports
EXPOSE 80
