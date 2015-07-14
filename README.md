# docker-vault

A [Docker](https://www.docker.com/) repository for Hashicorp's [Vault](https://vaultproject.io/).

## Usage

By default, it runs in a Vault server in [development mode](https://vaultproject.io/docs/concepts/dev-server.html), but you can overide the command to run a production server. In order to use mlock, you need to make sure to add the `--cap-add=IPC_LOCK` option to `docker run`; if you aren't using the disk as a physical backend, you may also want to use the `--read-only` flag.

```bash
docker run \
  --cap-add=IPC_LOCK \
  --read-only \
  -v /path/to/vault:/etc/vault:ro \
  buth/vault server -config=/etc/vault/config.hcl
```

See the [Docker Hub page](https://registry.hub.docker.com/u/buth/vault/) for available tags.
