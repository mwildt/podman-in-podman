## Commands

## Rootful
Den Container Bauen
```bash
podman build --tag playground/podman-rootful:demo --file podman-rootful.dockerfile .
```

Das Verzeichnis (re)initialisieren
```bash
mkdir -p data/rootfull-containers
podman unshare rm -rf data/rootfull-containers/**
```

Den Container Starten
```bash
podman run --privileged --rm -ti \
  -v ./data/rootfull-containers/:/var/lib/containers \
  playground/podman-rootful:demo \
  /bin/sh
```

```
podman pull registry.suse.com/bci/bci-base:15.5
```


## Rootless
Das Verzeichnis in einer subuid erstellen
```bash
mkdir data/rootless-containers
podman unshare chown 1000:1000 -R data/rootless-containers
```

Das Verzeichnis in einer subuid löschen
```bash
podman unshare rm -r containers
```

```bash
podman unshare rm -r containers/**
```


