=======
babaspec
========

test framework using babascript

Babascript を使えば人のテストができるかもしれないと思ったのでそういうフレームワーク用にリポジトリを確保した。
どちらかというと、serverspec とかに近い気がする。
RSpecとかmochaみたいな記法で人をテストする仕組みがあれば良い気がする。

``` coffeescript

babaspec "takumibaba", (baba) ->
  describe "プログラムが書けるか", ->
    it "should return true", ->
      baba.boolean.equal 'こんばんわ', true
      baba.string 'おはよう', 'おはよう'
      baba.number 'ほげふが', 10
      baba.list [1,2,3,4], 'えらんで', 1
      
```