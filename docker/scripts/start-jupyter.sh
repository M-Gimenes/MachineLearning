#!/bin/bash

# Setup nbstripout automatically
/app/docker/scripts/setup-nbstripout.sh

# Start Jupyter Lab
if [ -z "$JUPYTER_TOKEN" ]; then
    jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token="" --NotebookApp.password=""
else
    jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token="$JUPYTER_TOKEN" --NotebookApp.password=""
fi

