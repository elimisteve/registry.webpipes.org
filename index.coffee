config  = require './config'
helpers = require './app/libs/helpers'
express = require 'express'
app     = express()

app.configure ->
  app.set 'views', config.dirs.views
  app.set 'view engine', 'jade'
  app.use helpers.allowCrossDomain
  app.use express.favicon()
  app.use express.logger config.logs 
  app.use express.bodyParser()
  app.use express.static config.dirs.assets

app.configure 'development', ->
  app.use express.errorHandler(
    dumpExceptions  : true,
    showStack       : true
  )

app.configure 'production', ->
  app.use express.errorHandler()

controllers = [
  'block'
  'static'
]

controllers.map (name) ->
  controller = require config.dirs.controllers + '/' + name
  controller.setup app

app.listen config.port, ->
  console.log 'Listening on %s:%s', config.domain, config.port 
