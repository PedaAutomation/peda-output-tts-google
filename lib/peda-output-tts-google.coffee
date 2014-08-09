Player = require 'player'
fs = require 'fs'
request = require 'request'

output = "Hallo, ich bin Peda Baumert. Ich bin Physiklehrer."
language = "de"

url = "http://translate.google.com/translate_tts?tl=" + language + "&q=" + encodeURIComponent(output) 

player = new Player url
player.play()

