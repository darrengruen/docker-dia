# Dia in a docker container

Run [dia](https://wiki.gnome.org/Apps/Dia) in a docker container

## Usage

To run this you can use the following command:

```shell
docker run -d \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v "${HOME}"/Downloads:/root/Downloads \
    -v "${HOME}"/Documents:/root/Documents \
    -v "${HOME}"/.config/dia:/root/.dia \
    -e DISPLAY=unix"${DISPLAY}" \
    --name dia \
    gruen/dia
```

