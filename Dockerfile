FROM nimmis/apache-php5

MAINTAINER thepapamaan @ github

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Get latest version of IceCoder as per 2019-07-09 
RUN wget https://icecoder.net/download-zip?version=6.0 -O /icecoder.zip && \
unzip -q /icecoder.zip -d /root/ && \
mv /root/ICE* /var/www/html/icecoder && \
chown -R www-data.www-data /var/www/html/icecoder && \
rm -f /icecoder.zip 

