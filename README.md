# qiita-shelf

"qiita-shelf" は [Qiita](https://qiita.com/) に投稿する記事を管理するためのプログラムです

## Objective

[Qiita アカウント](https://qiita.com/muryakami) の記事を [GitHub アカウント](https://github.com/muryakami) で管理する

| Service | Account |
|:-------|:-------|
| [Qiita](https://qiita.com/) | [muryakami](https://qiita.com/muryakami) |
| [GitHub](https://github.com/) | [muryakami](https://github.com/muryakami) |

## Assignment

- GitHub に push する際に Qiita にも投稿する

| I/O | Service | Format |
|:-------|:-------|:-------|
| Input | [GitHub](https://github.com/) | Markdown |
| Output | [Qiita](https://qiita.com/) | Qiita Article |

## Branch Operation

| ブランチ名 | 説明 |
|:-------|:-------|
| master | デプロイに使用するブランチ。 Qiita に投稿した全ての記事が存在する |
| feature/* | 記事の編集に使用するブランチ。記事ごとに作成し `master` に marge する |

# Demo

- TODO:

## Images

- TODO:

# Features

- TODO:

# Requirements

- TODO:

# Installation

- TODO:

# Usage

## Setup

``` bash
$ git clone git@github.com:muryakami/qiita-shelf.git
$ cd qiita-shelf
```

# Note

TODO:

# Author

[muryakami](https://github.com/muryakami)

# License

[MIT license](https://en.wikipedia.org/wiki/MIT_License).
