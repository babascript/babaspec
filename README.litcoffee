=======
babaspec
========

test framework using babascript

babaで、人や実世界をテストするためのフレームワーク

Babascript を使えば人のテストができるかもしれないと思ったのでそういうフレームワーク用にリポジトリを確保した。
どちらかというと、serverspec とかに近い気がする。
RSpecとかmochaみたいな記法で人をテストする仕組みがあれば良い気がする。

baba.equal の第2引数の型をformatとして扱う

    baba.equal = (v1, v2) ->
      type = typeCheck v1, v2
      baba.exec v1, {format: type}, (result) ->
        assert.equal result.value, v1

    baba.notEqual = (v1, v2) ->
      type = typeCheck v1, v2
      baba.exec v1, {format: type}, (result) ->
        assert.notEqual result.value, v1

    baba.match = (v1, v2) ->
      # 正規表現でマッチすれば、みたいな
      
    baba.fail = (v1, v2) ->
      type = typeCheck v1, v2
      baba.exec v1, {format: type}, (result) ->
        assert.fail result.value, v1

    typeCheck = (v1, v2) ->
      if _.isBoolean v2
        return "boolean"
      else if _.isString v2
        return "string"
      else if _.isNumber v2
        return "number"
      else if _.isArray v2
        return "list"

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

