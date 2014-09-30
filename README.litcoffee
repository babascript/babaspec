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

        baba = new Babaspec "baba"

        baba.boolean.equal 'こんばんわ', true
        baba.string 'おはよう', 'おはよう'
        baba.number.notEqual 'ほげふが', 10
        baba.list [1,2,3,4], 'えらんで', 1

        baba.equal {format: 'boolean', key: 'hoge'}, true
        baba.notEqual {format: 'string', key: 'are'}, 'kore'

        world = new Babaspec "real-world", "name"

        world.equal "SFCのすぐ近く", true

        assert.equal baba.hogefuga({format: 'list'}, "hoge"), "fuga"

## 議論

## 関連研究

- 人とか実世界をテストするような仕組みある？

## おわりに