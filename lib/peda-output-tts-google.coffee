fs = require 'fs'
lame = require 'lame'
Speaker = require 'speaker'
request = require 'request'

output = "Hallo, ich bin Peda Baumert. Ich bin Physiklehrer."
language = "de"

url = "http://translate.google.com/translate_tts?tl=" + language + "&q=" + encodeURIComponent(output) 
tempFile = "temp.mp3"
console.log url

fileStream = fs.createWriteStream tempFile 

fileStream.on 'close', ->
	fs.createReadStream tempFile
	.pipe new lame.Decoder()
	.on 'format', (format) ->
		this.pipe new Speaker (format)

request(url).pipe (fileStream)
