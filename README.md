# mute-docker

Configuration files for building and deploy mute-demo as docker container.

## Building steps 

```
docker build --no-cache -t mute/mute-demo .
```

## Runnning mute-demo app and a dedicated mongodb instance

First, you must create a directory in which mongodb data will be saved:
```
mkdir mute-data
```

Then, you can use the provided docker-compose configuration file:
```
docker-compose up
```
