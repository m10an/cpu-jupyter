# CPU-Jupyter

This repository provides a CPU-only variant of the original GPU-Jupyter Docker setup. It contains a ready-to-use JupyterLab environment without CUDA or GPU requirements.

## Quickstart

1. Install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/).
2. Generate the Dockerfile and build the image:
   ```bash
   ./generate-Dockerfile.sh
   docker build -t cpu-jupyter .build/
   ```
3. Run the container:
   ```bash
   docker run -d -it -p 8848:8888 -v $(pwd)/data:/home/jovyan/work \
     -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes --user root --name cpu-jupyter_1 cpu-jupyter
   ```

The default password is `gpu-jupyter`. Mount your local `data` directory to persist notebooks.
