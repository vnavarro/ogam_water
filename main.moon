Player = require "player"

local player
local thing

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
  thing = Sprite "resources/imgs/sample.png", 450,300

love.update = (dt) ->
  movement_key dt

love.draw = ->
  player\draw_position 0
  thing\draw_position 1

  player\draw!
  thing\draw!
