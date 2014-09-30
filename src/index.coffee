EventEmitter = require('events').EventEmitter
Script = require 'babascript'
{Promise} = require 'es6-promise'
assert = require 'assert'
_ = require 'underscore'

module.exports = class Babaspec extends EventEmitter

  constructor: (id)->
    @baba = new Script id

  equal: (v1, v2) ->
    type = @getType v2
    baba.exec v1, {format: type}
    .then (result) ->
      assert.equal result.value, v2
    .catch (err) ->
      assert.fail()

  notEqual: (v1, v2) ->
    type = @getType v2
    baba.exec v1, {format: type}
    .then (result) ->
      assert.notEqual result.value, v2
    .catch (err) ->
      assert.fail()

  getType: (v) ->
    if _.isBoolean v2
      return "boolean"
    else if _.isString v2
      return "string"
    else if _.isNumber v2
      return "number"
    else if _.isArray v2
      return "list"
    return 'boolean'
