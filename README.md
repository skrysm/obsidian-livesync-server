# Server for Obsidian LiveSync

This repo contains a ready-to-use server for the [Obsidian LiveSync plugin](https://github.com/vrtmrz/obsidian-livesync). The server is hosted via Docker.

## One-Time Setup

Create `secrets.couchdb.env` file in the root directory (i.e. the directory where the `docker-compose.yml` file is located):

```
COUCHDB_PASSWORD=<your-couchdb-admin-password>
```

## Running the Server

To run the server, run:

```sh
> docker compose up -d
```

## Notes

* The LiveSync plugin automatically creates databases inside the CouchDB instance. As such, it needs the admin password.
