CakePHP Cookbook(cakephp/docs)をビルドするためのVagrant
=======================================================

sphinxフォーマットで書かれた CakePHP Cookbook(cakephp/docs) のファイルをビルドする環境を簡単につくるためのものです。
Make、Python、Sphinx などはもはやインストールする必要がありません！
その代わりに Virtual Box と Vagrant を使うのです。

インストール
------------

    $ git clone https://github.com/waterada/cakephp_docs_vagrant.git
    $ cd cakephp_docs_vagrant
    $ git submodule update --init

その後、`forked_docs_path.conf` を開いてください。

    $ vi forked_docs_path.conf

開いたら、下記のように、https://github.com/cakephp/docs からフォークしてクローンした自分の docs ディレクトリのパスに書き換えます。

    /Users/waterada/cakephp/docs

もしくは

    C:/cakephp/docs

そうして、`vagrant up` してください。

    $ vagrant up

以上です。


ビルド
------

日本語の翻訳をビルドしたいなら:

    $ vagrant ssh
    [vagrant]$ cd /forked_docs

で、マウントされている docs のパスまで移動して、

    [vagrant]$ make html-ja

として、ローカルの、docs のフォルダ開いてください。build というフォルダが出来上がっているはずです。
この中にビルド済みのファイルが生成されていますので、ブラウザで直接開いて確認してください。

以上です。



Vagrant to build the cakephp/docs -- CakePHP Cookbook.
======================================================

This is for easy making the envrinment to build sphinx format files of cakephp/docs -- CakePHP Cookbook. It means the Make, Python, Sphinx and so on no longer need to be installed into your PC! Instead, you will use the Virtual Box and Vagrant.

Installing
----------

    $ git clone https://github.com/waterada/cakephp_docs_vagrant.git
    $ cd cakephp_docs_vagrant
    $ git submodule update --init

Then, you need to open `forked_docs_path.conf`:

    $ vi forked_docs_path.conf

And you need to change the path to your cloned docs directory forked from https://github.com/cakephp/docs. For example:

    /Users/waterada/cakephp/docs

or

    C:/cakephp/docs

Then, `vagrant up`.

    $ vagrant up

That's all.


Building
--------

If you'd like to build the Japanese translation, then, after move the mounted `docs` directory:

    $ vagrant ssh
    [vagrant]$ cd /forked_docs

Then, run `make`.

    [vagrant]$ make html-ja

Then, open your local `docs` directory. You will find `build` directory there. You can directly open build files with any browser to check them.

That's all.
