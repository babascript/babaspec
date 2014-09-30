=======
babaspec: Test framework for human and real-world.
========


test framework using babascript

- 人の挙動を記述するDSL Babascriptを利用したテストフレームワーク
- 人のスペックや実世界のスペックを記述し、テストできるようになる

## Background

プログラムは、そのプログラムがどのように動作するべきかのスペックを記述し、テストする。
プログラムがテストできる対象はプログラムのみであるが、人や実世界という要素をもテストしたいはずだ。
しかし、人のスペックや実世界のスペックを定義し、テストできるような仕組みはない。
そこで、本研究では、人や実世界のスペックを定義してテストできるようなテストフレームワーク Babaspec を提案する。

## Babaspec

Babaspecは、人への行動命令をプログラム上で記述可能にする Babascript と node.js上で利用可能な
テストフレームワーク mocha を組み合わせる。

    describe "baba spec test", ->

      it "should return true", ->

        # 人間のスペックを記述する
        baba = new Babaspec "baba"

        baba.equal "プログラムが書けますか", true # format is boolean
        baba.notEqual "hoge", 'are' # format is string
        baba.lt "何歳ですか", 20 # format is number
        # fomat List の場合をどうするか
        baba.equal baba.選んでください({formatL list, list: [1,2,3]}), [1,2] # format is list?

        # 実世界のスペックを記述する
        world = new Babaspec "real-world", "name"
        world.equal "SFCのすぐ近く", true


## 議論

## 関連研究

- 人とか実世界をテストするような仕組みある？

## おわりに