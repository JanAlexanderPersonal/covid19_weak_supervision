#!/bin/bash
# Run the torch container
docker run --rm --gpus all --net=host --ipc=host -m 24g -e DISPLAY=$DISPLAY \
    -v ${PWD}:/root/space/WiseNet \
    -v /media/jan/DataStorage/ProjectData/covid/:/root/space/data/ \
    -v /media/jan/DataStorage/ProjectData/temp/:/root/space/temp/ \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --env="QT_X11_NO_MITSHM=1" -it wisenet:torch bash
