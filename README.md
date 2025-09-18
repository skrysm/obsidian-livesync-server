# Server for Obsidian LiveSync

This repo contains a ready-to-use server for the [Obsidian LiveSync plugin](https://github.com/vrtmrz/obsidian-livesync). The server is hosted via Docker and automatically secured over HTTPS (certificates created by Let's Encrypt).

The setup will use port 80 (for Let's Encrypt only) and a configurable HTTPS port (443 by default).

> [!NOTE]
> This setup is for servers that can be **directly reached** from the Internet. It's *not* meant for intranet servers hidden behind Cloudflare tunnels or similar technologies.

## One-Time Setup

Create **`secrets.couchdb.env`** file in the root directory (i.e. the directory where the `docker-compose.yml` file is located):

```
COUCHDB_PASSWORD=<your-couchdb-admin-password>
```

Create **`secrets.proxy.env`** file:

```
SERVER_DOMAIN=<your-domain>
```

> [!NOTE]
> The specified domain name (`<your-domain>`) must resolve to the IP address of the server.

## Running the Server

To run the server, run:

```sh
> docker compose up -d
```

This will make the CouchDB instance accessible at:

    https://<your-domain>/couchdb/

## Notes

* The LiveSync plugin automatically creates databases inside the CouchDB instance. As such, it needs the admin password.
