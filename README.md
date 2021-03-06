# Rancher Backup

### cli environment variables
```
RANCHER_ENVIRONMENT
RANCHER_URL
RANCHER_ACCESS_KEY
RANCHER_SECRET_KEY
```
### backup.sh
```
 #!/bin/sh
time=$(date +"%Y-%m-%dT%H-%M-%S")
rancher export --system -f "/volumes/backup/rancher-stack-$time.tar"
tar -jcvf "/volumes/backup/data-$time.tar.bz2" /volumes/data

```

