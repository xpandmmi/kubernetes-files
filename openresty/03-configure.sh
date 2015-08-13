#!/bin/bash

locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export DEBIAN_FRONTEND=noninteractive
add-apt-repository -y ppa:ondrej/php5-5.6
apt-get update
#apt-get install php5

apt-get install -yqq php5 php5-fpm php5-gd php5-mysqlnd php5-mcrypt php5-curl
