process.env.NODE_ENV = 'test'

path = require 'path'
assert = require 'assert'

describe 'test', ->

  script = require path.resolve()

  it 'should be hoge', (done) ->
    return assert.equal 'hoge', script()

  it 'boolean', (done) ->
    babaspec.equal 'aaaaaa', true

  it 'string', (done) ->
    babaspec.equal 'bbbbb', 'hoge'

  it 'number', (done) ->
    babaspec.equal 'cccc', 10