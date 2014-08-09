google = require './google.coffee'

module.exports = (slave) ->
  slave.on 'output', (string) ->
    google.speak string
