# Python Environment

## What's this?

勉強用にPython環境を手軽に簡単に構築する為のものです。

- python3
- anaconda3

## Usage

```
$ sh jupy.sh
```

Jupiter NotebookのURL取得
> 基本はこの中でやる方がスムーズです
```
$ docker logs jupyter-notebook
```

コンテナの中に入りたい
> コンテナの中に入って色々できますが、DISPLAYが設定されていない為、matplotlibによる作図はできません。
> それでもやりたい場合は[このあたりの記事](https://qiita.com/TomokIshii/items/3a26ee4453f535a69e9e)を参照してください。
```
$ docker exec -it jupyter-notebook bash
```

## 参照サイト
[ローカル環境をよごさずに Jupyter で python コードが動く環境を手軽につくる方法](https://qiita.com/yaiwase/items/3a58313e028315004a56)
