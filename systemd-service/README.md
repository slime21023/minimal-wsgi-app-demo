# Docker compose as a systemd unit

Create file `/etc/systemd/system/wsgi-app.service`
* Install `docker`, `docker-compose` by ubuntu snap


## Start the service

```bash
systemctl start wsgi-app.service
```

## Stop the service
```bash
systemctl stop wsgi-app.service
```

## Enable the service

```bash
systemctl enable wsgi-app.service
```

## Default Application Path 

path: `/etc/app-service/mini-wsgi-app`