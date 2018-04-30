# Python Environment

## What's this?

勉強用にPython環境を手軽に簡単に構築する為のものです。

- python3
- anaconda3

## Usage

```
$ docker pull continuumio/anaconda3
$ sh jupy.sh
```

URL取得
```
$ docker logs jupyter-notebook
```

コンテナの中に入りたい
```
$ docker exec -i -t jupyter-notebook bash
```

## 参照サイト
[ローカル環境をよごさずに Jupyter で python コードが動く環境を手軽につくる方法](https://qiita.com/yaiwase/items/3a58313e028315004a56)
