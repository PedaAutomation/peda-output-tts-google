google = require './google.coffee'

module.exports = (slave) ->
  slave.setType "output"
  slave.setName "tts"

  slave.on 'output', (string) ->
    google.speak string
