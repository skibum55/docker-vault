# docker-vault

A [Docker](https://www.docker.com/) repository for Hashicorp's [Vault](https://vaultproject.io/).

## Usage

By default, it runs in a Vault server in [development mode](https://vaultproject.io/docs/concepts/dev-server.html), but you can overide the command to run a production server.

```bash
docker run \
  --memory-swap=-1 \
  --read-only \
  -v /path/to/vault:/etc/vault:ro \
  buth/vault server -config=/etc/vault/config.hcl
```

See the [Docker Hub page](https://registry.hub.docker.com/u/buth/vault/) for available tags.
