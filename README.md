# Openrefine Docker image

Openrefine version: [3.0-rc1](https://github.com/OpenRefine/OpenRefine/releases/tag/3.0-rc.1).

## Run using Docker

This image keeps its persistent workspace internally in `/var/openrefine`.
Mount a local volume or folder to persist Openrefine's workspace:

```
docker run dbcawa/openrefine -v /var/openrefine:/path/on/your/host
```

## Run using docker-compose
TODO