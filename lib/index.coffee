google = require './google.coffee'

module.exports = (slave) ->
  slaveHelper.setType "output"
  slaveHelper.setName "tts"

  slave.on 'output', (string) ->
    google.speak string
