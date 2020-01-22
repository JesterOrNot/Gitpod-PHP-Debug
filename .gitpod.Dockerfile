FROM gitpod/workspace-full

USER gitpod

# Install XDebug
RUN pecl channel-update pecl.php.net && pecl install xdebug