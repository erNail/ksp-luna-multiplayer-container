# ksp-luna-multiplayer-container

Container Image for the Kerbal Space Program Luna Multiplayer Server

## Getting Started

The container is available at `ghcr.io/ernail/ksp-luna-multiplayer:<VERSION>`.
The latest version can be found via [GitHub Releases](https://github.com/erNail/ksp-luna-multiplayer-container/releases)

### Run the container via `docker run`

```shell
docker run \
  -p 8800:8800/udp \
  -p 8900:8900/tcp \
  -v ./luna-multiplayer-data/Config:/app/Config \
  -v ./luna-multiplayer-data/Plugins:/app/Plugins \
  -v ./luna-multiplayer-data/Universe:/app/Universe \
  -v ./luna-multiplayer-data/logs:/app/logs \
  ghcr.io/ernail/luna-multiplayer:<VERSION>
```

### Run the container via `docker compose`

Copy the `docker-compose.yml` from this repository, then run the following:

```shell
docker-compose up
```

## Contributing

Please check the [`CONTRIBUTING.md`](./CONTRIBUTING.md) to learn how to contribute.

## Development

### Installing dependencies

You can install all required dependencies via `Task` and `Homebrew`

```shell
brew install go-task
task install
```

If you'd like to use other tools,
you can find all dependencies and relevant commands in the [`taskfile.yaml`](./taskfile.yaml)

### Build the Container

```shell
task build
```

### Run the Container

```shell
task run
```
