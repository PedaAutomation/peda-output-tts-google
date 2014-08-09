lame = require 'lame'
Speaker = require 'speaker'
request = require 'request'

speak = (string) ->
	language = "de" #TODO: put the language somewhere else

	url = "http://translate.google.com/translate_tts?tl=" + language + "&q=" + encodeURIComponent(string) 

	request(url)
	.pipe new lame.Decoder()
	.on 'format', (format) ->
		this.pipe new Speaker (format)
	
module.exports.speak = speak
