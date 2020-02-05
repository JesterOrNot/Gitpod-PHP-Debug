FROM gitpod/workspace-full

USER gitpod

# Install XDebug
RUN sudo pecl channel-update pecl.php.net && sudo pecl install xdebug

USER root
# Allow XDebug to be debugger for PHP
RUN echo -e '\n"zend_extension="/usr/lib/php/20170718/xdebug.so"' >>/etc/php/7.2/apache2/php.ini

RUN sudo apt-get update -q \
    && sudo apt-get install -y php-dev