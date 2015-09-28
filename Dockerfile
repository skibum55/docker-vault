FROM voxxit/base:alpine
MAINTAINER Sean Keery <skibum55@hotmail.com>

RUN  wget http://dl.bintray.com/mitchellh/vault/vault_0.1.2_linux_amd64.zip \
  && unzip vault_0.1.2_linux_amd64.zip \
  && mv vault /usr/local/bin/ \
  && rm -f vault_0.1.2_linux_amd64.zip

EXPOSE 8200

ENTRYPOINT [ "vault" ]

CMD [ "server", "-dev" ]
