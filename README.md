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

If you require SSL CA certificates – which you'll need to make any HTTPS request – mount them from the host system to `/etc/ssl/certs`. For instance, when using [CoreOS](https://coreos.com/), add `-v /usr/share/ca-certificates:/etc/ssl/certs:ro` to your command.

See the [Docker Hub page](https://registry.hub.docker.com/u/buth/vault/) for available tags.
