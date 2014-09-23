EventEmitter = require('events').EventEmitter
Script = require 'babascript'
{Promise} = require 'es6-promise'

module.exports = class Babaspec extends EventEmitter
  constructor: (id)->
    @baba = new Script id

  string: (order, value) ->
    return new Promise (resolve, reject) ->
      @baba.exec order, {format: 'string'}
      .then (result) ->
        v = result.value
        if v is value
          resolve true
        else
          reject()