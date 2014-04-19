class Sprite
  new: (img, initial_x, initial_y) =>
    @image = love.graphics.newImage img
    @x = initial_x
    @y = initial_y

  draw: =>
    love.graphics.draw(@image,@x,@y)

  update: (dt) =>
