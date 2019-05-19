FROM debian:8 
RUN apt-get update && apt-get install curl wget unzip -y

RUN wget https://releases.hashicorp.com/vault/1.1.0/vault_1.1.0_linux_amd64.zip
RUN unzip vault_1.1.0_linux_amd64.zip
RUN mv vault /usr/local/bin/
RUN mkdir -p /vault/config

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 777 /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["server"]
