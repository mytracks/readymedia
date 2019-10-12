# Overview

Docker container containing the media server [ReadyMedia](https://sourceforge.net/projects/minidlna/) (previously MiniDLNA).

## Usage

You can start the container like this:

```bash
docker volume create readymediacache
docker run --restart=unless-stopped -d --name=readymedia1 --net=host  -v /my/video/path:/media -v readymediacache:/cache -e VIDEO_DIR1=/media/my_video_files mytracks/readymedia
```

The container needs a volume to cache some data. In the example above a Docker volume is used for that. You can also map the cache to some host folder.

## Configuration

You can configure the container using the following environment variables:

| Environment Variable  | Description | Default Value |
| ------------- | ------------- | ------------- |
| `FRIENDLY_NAME`  | The user visible name of this instance. | `My ReadyMedia Server` |
| `TCP_PORT`  | The TCP port used by the service.  | `8200` |
| `SERIAL`  | An arbitrary number for this instance.  | `1234567890` |
| `VIDEO_DIR[1-9]`  | Path to a directory containing video files  |  |
| `AUDIO_DIR[1-9]`  | Path to a directory containing audio files  |  |
| `PICTURES_DIR[1-9]`  | Path to a directory containing picture files  |  |

## Supported Architectures

The following Docker architectures are supported: `linux/arm64`, `linux/arm/v7` and `linux/amd64`

## Kubernetes

You can also run this container in Kubernetes. Here is an example of a deployment definition that you can use as a starting point for your configuration:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: readymedia
  labels:
    app: readymedia
spec:
  replicas: 1
  selector:
    matchLabels:
      app: readymedia
  template:
    metadata:
      labels:
        app: readymedia
    spec:
      hostNetwork: true
      containers:
      - name: readymedia
        image: mytracks/readymedia
        env:
        - name: VIDEO_DIR1
          value: /media/my_video_files
        volumeMounts:
        - mountPath: /media
          name: media
        - mountPath: /cache
          name: cache
      volumes:
      - name: media
        hostPath:
          path: /volumes/HD/media
          type: Directory
      - name: cache
        hostPath:
          path: /volumes/HD/readymediacache
          type: Directory
```

*Notes:*

* You need to set `hostNetwork: true`. If you know a better solution please let me know.
