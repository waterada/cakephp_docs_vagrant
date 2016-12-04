CakePHP Cookbook(cakephp/docs)をビルドするためのVagrant
=======================================================

sphinxフォーマットで書かれた CakePHP Cookbook(cakephp/docs) のファイルをビルドする環境を簡単につくるためのものです。
Make、Python、Sphinx などを個別にインストールする必要がありません！
その代わりに Virtual Box と Vagrant を使うのです。

インストール
------------

- 下記で cakephp_docs_vagrant をクローンします。

```
$ git clone git@github.com:gr-ishiguro/cakephp_docs_vagrant.git
```

- https://github.com/cakephp/docs をフォークし、 `cakephp_docs_vagrant/` の直下へとクローンします。

```
$ cd cakephp_docs_vagrant
$ git clone git@github.com:your-repogitory/docs.git
```

- `cakephp_docs_vagrant/` の直下で `vagrant up` してください。

```
$ vagrant up
```

以上です。


ビルド
------

日本語の翻訳をビルドしたいなら:

```
$ vagrant ssh
[vagrant]$ cd /vagrant/docs
[vagrant]$ make html-ja
```

としてビルドしたら、ローカルの、docs のフォルダ開いてください。build というフォルダが出来上がっているはずです。
この中にビルド済みのファイルが生成されていますので、ブラウザで直接開いて確認してください。

以上です。
