Player = require "player"

local player

love.load = ->
  player = Player "resources/imgs/sample.png",400,300

love.update = (dt) ->

love.draw = ->
  love.graphics.printf "Ola Mundo", 400,300,250,"center"
  player\draw!
