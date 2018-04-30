#!/bin/sh

# 参照サイト:
# https://qiita.com/yaiwase/items/3a58313e028315004a56
#
# 利用方法
# $ docker pull continuumio/anaconda3
# $ sh jupy.sh
#
# URL取得
# $ docker logs jupyter-notebook
#
# コンテナの中に入りたい
# $ docker exec -i -t jupyter-notebook bash

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
