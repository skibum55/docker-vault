listener "tcp" {
  address = "0.0.0.0:$PORT"
  tls_disable = 1
}

disable_mlock = true
