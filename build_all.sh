#!/bin/sh
cd ubuntu-common && ./build.sh \
&& cd ../php8 && ./build.sh \
&& cd ../php74 && ./build.sh \
&& cd ../mailhog && ./build.sh \
&& cd ../certbot && ./build.sh \
&& cd ../
