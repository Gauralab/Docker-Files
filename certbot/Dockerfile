FROM gauralab/ubuntu-common:20.04 
RUN python3 -m venv /opt/certbot/ && /opt/certbot/bin/pip install --upgrade pip \
    && /opt/certbot/bin/pip install certbot\
    && ln -s /opt/certbot/bin/certbot /usr/bin/certbot
ENTRYPOINT [ "certbot" ]
EXPOSE 80 443
VOLUME /etc/letsencrypt /var/lib/letsencrypt
WORKDIR /opt/certbot    
