#!/bin/sh

# anaconda3 pull
docker images | grep -w continuumio/anaconda3
[ ! $? = 0 ] && docker pull continuumio/anaconda3

# jupyte-notebookのディレクトリ作成
dir=$HOME/jupyter-notebook/notebooks
[ ! -e $dir ] && mkdir -p $dir

# run
docker run \
    -d -i -t \
    -p 8888:8888 \
    --name jupyter-notebook \
    -v $HOME/jupyter-notebook/notebooks:/opt/notebooks \
    continuumio/anaconda3 \
    /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --no-browser --allow-root"
