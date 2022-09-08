FROM gauralab/ubuntu-common:22.04 
ENV UID=1000
ENV GID=1000
RUN apt update && apt install -y python3-venv && python3 -m venv /opt/certbot/ && /opt/certbot/bin/pip install --upgrade pip \
    && /opt/certbot/bin/pip install certbot\
    && ln -s /opt/certbot/bin/certbot /usr/bin/certbot \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENTRYPOINT [ "certbot" ]
EXPOSE 80 443
VOLUME /etc/letsencrypt /var/lib/letsencrypt
WORKDIR /opt/certbot    
