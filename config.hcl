disable_mlock = true

backend "etcd" {
  address = "http://172.17.42.1:2379"
  path = "vault"
}

listener "tcp" {
  address = "127.0.0.1:8200"
  tls_cert_file = "/etc/vault/vault.crt"
  tls_key_file = "/etc/vault/vault.key"
}
