## cpu-jupyter on staroid

This directory contains files to deploy cpu-jupyter project on [staroid](https://staroid.com).

[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)


## Development

Run locally with [skaffold](https://skaffold.dev) command.

```
$ git clone https://github.com/iot-salzburg/cpu-jupyter.git
$ cd cpu-jupyter
$ skaffold dev -f .staroid/skaffold.yaml --port-forward -p minikube
```

and browse `http://localhost:8888`
