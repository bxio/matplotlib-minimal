################################################################################
##    Dockerfile to build minimal Matplotlib image with Python3 and Numpy     ##
################################################################################
FROM alpine:3.10.2

LABEL MAINTAINER="Bill Xiong <bill@billxiong.com>"
ENV LANG=C.UTF-8
ARG MATPLOTLIB_VERSION=3.1.1

# Build dependencies
RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
            --update --no-cache git python3 python3-dev libgfortran && \
    apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
            --update --no-cache py-numpy py-numpy-dev && \
    apk add --update --no-cache build-base libstdc++ \
                                libpng libpng-dev \
                                freetype freetype-dev && \
    # Update musl to work around a bug
    apk upgrade --repository http://dl-cdn.alpinelinux.org/alpine/edge/main musl && \
    # Make Python3 as default
    ln -fs /usr/include/locale.h /usr/include/xlocale.h && \
    ln -fs /usr/bin/python3 /usr/local/bin/python && \
    ln -fs /usr/bin/pip3 /usr/local/bin/pip && \
    # Install Python dependencies
    pip3 install -v --no-cache-dir matplotlib==$MATPLOTLIB_VERSION && \
    pip3 install -v --no-cache-dir --upgrade pip && \
    # Cleanup
    apk del --purge build-base libgfortran libpng-dev freetype-dev \
                    python3-dev py-numpy-dev && \
    rm -vrf /var/cache/apk/*
