# 概要

Google Cloud Platform 上でPleromaを簡単に構築できるスタートアップスクリプトです。

ライセンスは[MIT](./LICENSE)となっております。

# 使い方

まず、Google Computer Engine にてVMインスタンスを作成し、下記の記事を参考に Cloud DNS を設定します。

[GCE（Google Compute Engine）で独自ドメインを設定する](https://www.compiere-distribution-lab.net/idempiere-lab/install-advance/google-cloud-dns/)

設定後、しばらく時間をおいてからSSHなどでVMインスタンスへとアクセス。
このリポジトリを clone します

```
git clone https://github.com/S-H-GAMELINKS/Pleroma.Start.Script.for.GoogleCloudPlatform.git　pleroma
```

clone したら、ディレクトリを移動し、

```
cd pleroma
```

先ほど設定した独自ドメイン(example.comなど)を引数にshellを実行します。

```
sh pleroma.sh example.com
```

あとは所々で確認メッセージなどが表示されるので必要な情報を随時入力してください。

最後に、以下のコマンドでPleromaを立ち上げます。

```
sudo systemctl start pleroma.service
```

# 謝辞

今回のPleromaスタートアップスクリプトを作成するにあたって、ておりあ氏の記事を参考にさせて頂きました。
この場を借りて感謝申し上げます。

# 参考記事
[ubuntuにpleromaを入れてなんとなく動かす](https://theoria24.github.io/install-pleroma-to-ubuntu/)

[Ubuntu16.04にPostgreSQLをインストール](https://qiita.com/eighty8/items/82063beab09ab9e41692)

[GCE（Google Compute Engine）で独自ドメインを設定する](https://www.compiere-distribution-lab.net/idempiere-lab/install-advance/google-cloud-dns/)
