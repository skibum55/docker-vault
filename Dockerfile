FROM busybox

ENV VAULT_VERSION=0.2.0
ENV VAULT_SHA256=b4b64fcea765ebfc7cdbae9cdd2c32bff130ca51f15b9cf47194f112fd5515cf
RUN \
  wget http://dl.bintray.com/mitchellh/vault/vault_${VAULT_VERSION}_linux_amd64.zip &&\
  echo "${VAULT_SHA256}  vault_${VAULT_VERSION}_linux_amd64.zip" | sha256sum -c - &&\
  unzip vault_${VAULT_VERSION}_linux_amd64.zip &&\
  rm vault_${VAULT_VERSION}_linux_amd64.zip &&\
  mv vault /usr/bin

RUN mkdir -p /etc/vault
COPY config.hcl /etc/vault/config.hcl

ENTRYPOINT ["vault"]
CMD ["server", "-config=/etc/vault/config.hcl"]
EXPOSE 8200
