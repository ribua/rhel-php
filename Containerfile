FROM registry.access.redhat.com/ubi9/php-82

# Place application source where the UBI PHP runtime serves content.
COPY index.php /opt/app-root/src/index.php

# The stock image default CMD is `s2i/usage` (prints help and exits) — you must
# start Apache with the image's S2I run script for a long-running process.
CMD ["/usr/libexec/s2i/run"]

EXPOSE 8080
