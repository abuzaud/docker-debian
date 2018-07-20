### Installation

```
docker build -t="debian:server"
docker create --tty --interactive --name="debian_server" debian:server
```

Pour attacher le container à la console
`docker start --attach debian_server`


## Raccourcis docker
Liste des containers
`docker ps -l`

Liste des images
`docker images`
