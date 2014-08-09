google = require './google.coffee'

module.exports = (slave) ->
  slaveHelper.setType "input"
  slaveHelper.setName "tts-google"

  slave.on 'output', (string) ->
    google.speak string
