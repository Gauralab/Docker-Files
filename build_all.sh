#!/bin/sh
cd ubuntu20.04-common && ./build.sh \
&& cd ../php7.4-common && ./build.sh \
&& cd ../php8.0-common && ./build.sh \
&& cd ../php8.1-common && ./build.sh \
&& cd ../