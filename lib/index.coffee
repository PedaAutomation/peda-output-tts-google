google = require './google.coffee'

module.exports = (slave) ->
  slave.setType "output"
  slave.setName "tts"

  slave.on 'output', (data) ->
    google.speak data.data, slave.getLanguage
