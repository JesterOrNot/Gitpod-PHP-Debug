FROM gitpod/workspace-full

USER gitpod

# Install XDebug
RUN sudo pecl channel-update pecl.php.net && sudo pecl install xdebug
