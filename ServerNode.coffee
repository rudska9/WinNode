fs = require 'fs'
http = require 'http'
url = require 'url'

http.createServer((request, response) ->
  pathname = url.parse(request.url).pathname
  if pathname == '/'
    fs.readFile 'HTMLPage.html', (error, data) ->
      response.writeHead(200, { 'Content-Tyoe': 'text/html' })
      response.end(data)
  else if pathname =='/play'
    fs.readFile 'play.mp3', (error, data) ->
      response.writeHead(200, { 'Content-Type': 'audio/mp3'})
      response.end(data)
  else if pathname =='/photo'
    fs.readFile 'kyoungnam.jpg', (error, data) ->
      response.writeHead(200, { 'Content-Type': 'image/jpeg'})
      response.end(data)
   else if pathname =='/calculator'
    fs.readFile 'Calculator.html', (error, data) ->
      response.writeHead(200, { 'Content-Type': 'text/html'})
      response.end(data)
   else if pathname =='/jquery'
    fs.readFile 'jquery/dist/jquery.js', (error, data) ->
      response.writeHead(200, { 'Content-Type': 'text/js'})
      response.end(data)
   else if pathname =='/JsSource'
    fs.readFile 'ServerCoffee.js', (error, data) ->
      response.writeHead(200, { 'Content-Type': 'text/js'})
      response.end(data)


).listen(8080, ->
  console.log('Server Running at http://192.168.0.203:8080')
)