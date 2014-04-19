Sprite = require "sprite"
class Player extends Sprite
  new: (initial_x, initial_y) =>
    super "resources/imgs/sample.png", initial_x, initial_y
    @speed = 3
    @walk_units = 1

  move: =>
    @speed * @walk_units

  move_left: (dt) =>
    @x -= @move! * dt

  move_right: (dt) =>
    @x += @move! * dt

  move_up: (dt) =>
    @y -= @move! * dt

  move_down: (dt) =>
    @y += @move! * dt
