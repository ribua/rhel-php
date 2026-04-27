FROM registry.access.redhat.com/ubi9/php-82

# Place application source where the UBI PHP runtime serves content.
COPY index.php /opt/app-root/src/index.php

EXPOSE 8080
