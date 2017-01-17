CakePHP Cookbook(cakephp/docs)をビルドするためのVagrant
=======================================================

sphinxフォーマットで書かれた CakePHP Cookbook(cakephp/docs) のファイルをビルドする環境を簡単につくるためのものです。
Make、Python、Sphinx などはもはやインストールする必要がありません！
その代わりに Virtual Box と Vagrant を使うのです。

インストール
------------

- https://github.com/cakephp/docs から自PC内へとフォークしてクローンしておきます。
- 下記のコマンドを実行して `vagrant` 関連ファイルを取得します。

```
$ git clone https://github.com/gr-ishiguro/cakephp_docs_vagrant.git
$ cd cakephp_docs_vagrant
```

- `Vagrantfile` の `/path/to/your/cakephp/docs` を自PC内の `docs` のパスに書き換えます。たとえば、 `/Users/gr-ishiguro/cakephp/docs` もしくは `C:/cakephp/docs` というように。

```
$ vi Vagrantfile
config.vm.synced_folder "/path/to/your/cakephp/docs", "/forked_docs"
↓
config.vm.synced_folder "/path/to/your/cakephp/docs", "/forked_docs"
```

- 書き換えたら、`vagrant up` してください。

```
$ vagrant up
```

以上です。


ビルド
------

日本語の翻訳をビルドしたいなら:

```
$ vagrant ssh
[vagrant]$ cd /forked_docs
```

で、マウントされている docs のパスまで移動して、

```
[vagrant]$ make html-ja
```

としてビルドしたら、ローカルの、docs のフォルダ開いてください。build というフォルダが出来上がっているはずです。
この中にビルド済みのファイルが生成されていますので、ブラウザで直接開いて確認してください。

以上です。



Vagrant to build the cakephp/docs -- CakePHP Cookbook.
======================================================

This is for easy making the envrinment to build sphinx format files of cakephp/docs -- CakePHP Cookbook. It means the Make, Python, Sphinx and so on no longer need to be installed into your PC/Mac! Instead, you will use the Virtual Box and Vagrant.

Installing
----------

- Firstly, please fork and clone https://github.com/cakephp/docs to your PC or Mac.
- Then, please execute the following commands to get the `vagrant` files.

```
$ git clone https://github.com/waterada/cakephp_docs_vagrant.git
$ cd cakephp_docs_vagrant
$ vi Vagrantfile
```

- Then, please change the `/path/to/your/cakephp/docs` in the `Vagrantfile`. ex) `/Users/waterada/cakephp/docs` or `C:/cakephp/docs`.

```
$ vi Vagrantfile
before) config.vm.synced_folder "/path/to/your/cakephp/docs", "/forked_docs"
after)  config.vm.synced_folder "/path/to/your/cakephp/docs", "/forked_docs"
```

- Then, `vagrant up`.

```
$ vagrant up
```

That's all.


Building
--------

If you'd like to build the Japanese translation, then, after move the mounted `docs` directory:

```
$ vagrant ssh
[vagrant]$ cd /forked_docs
```

Then, run `make`.

```
[vagrant]$ make html-ja
```

Then, open your local `docs` directory. You will find `build` directory there. You can directly open build files with any browser to check them.

That's all.
