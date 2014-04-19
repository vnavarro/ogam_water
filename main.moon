Player = require "player"

local player

movement_key = (dt) ->
  if love.keyboard.isDown("right") then
    player\move_right dt
  if love.keyboard.isDown("left") then
    player\move_left dt
  if love.keyboard.isDown("down") then
    player\move_down dt
  if love.keyboard.isDown("up") then
    player\move_up dt

love.load = ->
  player = Player 400,300

love.update = (dt) ->
  movement_key dt

love.draw = ->
  love.graphics.printf "Ola Mundo", 400,300,250,"center"
  player\draw!
