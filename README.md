# dexpf-cli

UNIXシェルのコマンドラインで使うDEXPF操作ツール

## 動作環境

- jq / jo / perl / curl が動作するLinux / FreeBSD等のシェル環境
- jo はバージョン1.3以降が必須
    - Debian 9/10ではjoのバージョンは1.1であるため、Debian 11用のjo(1.3)のパッケージをインストールする

## 準備

作業用のディレクトリを用意する

```
mkdir apioperation
cd apioperation
```

本プログラムを bin ディレクトリ内に git clone する

```
mkdir bin
git clone git@github.com:plathome/dexpf-cli.git bin
```

コマンドのリンクを作成する

```
cd bin
make 
cd ..
```

adminユーザーのアカウントファイルを用意する

```
cat admin.json
{
    "username": "admin@iot.example.jp",
    "password": "5JEHLz9JDIwEHsLeh5Od"
}
mkdir -p db/admin
mv admin.json db/admin/.user.json
```
