FROM busybox

COPY ./vault.hcl /etc/ 

RUN \
  wget -O /tmp/vault_0.3.0_linux_amd64.zip http://dl.bintray.com/mitchellh/vault/vault_0.3.0_linux_amd64.zip &&\
  unzip /tmp/vault_0.3.0_linux_amd64.zip -d /tmp &&\
  mv /tmp/vault /usr/sbin

ENTRYPOINT ["vault"]
CMD ["server", "-dev","-config","\etc\vault.hcl"]
