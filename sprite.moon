class Sprite
  new: (img, initial_x, initial_y) =>
    @image = love.graphics.newImage img
    @x = initial_x
    @y = initial_y

    @setup_debug!

  max_x: =>
    @x + @image\getWidth!

  max_y: =>
    @y + @image\getHeight!

  draw: =>
    love.graphics.draw(@image,@x,@y)

    @draw_debug!

  update: (dt) =>

-- collision
  collided_with: (target) =>
    left_x_inside = target.x >= @x and target.x <= @max_x!
    top_y_inside = target.y >= @y and target.y <= @max_y!
    right_x_inside = target\max_x! >= @x and target\max_x! <= @max_x!
    bottom_y_inside = target\max_y! >= @y and target\max_y! <= @max_y!

    collided = left_x_inside and top_y_inside

    collided = collided or (right_x_inside and top_y_inside)

    collided = collided or (right_x_inside and bottom_y_inside)

    collided = collided or (left_x_inside and bottom_y_inside)

    return collided


-- debug
  setup_debug: =>
    @debug = true
    @debug_outline = false
    @debug_random_color!

  draw_debug: =>
    if @debug then
      r, g, b, a = love.graphics.getColor()

      @set_debug_color!
      @draw_bounding_box @debug_outline

      love.graphics.setColor( r, g, b, a )

  draw_bounding_box: (outline) =>
    mode = 'fill'
    if outline then
      mode = 'line'

    vertices = { @x, @y, @max_x!, @y, @max_x!, @max_y!, @x, @max_y! }
    love.graphics.polygon( mode, vertices )

  set_debug_color: =>
    love.graphics.setColor( @dr, @dg, @db, 150 )

  debug_random_color: =>
    if @debug == false then return

    @dr = love.math.random(255)
    @dg = love.math.random(255)
    @db = love.math.random(255)

  draw_position: (column) =>
    x = 35*column
    love.graphics.printf math.ceil(@x), x,0,0,"left"
    love.graphics.printf math.ceil(@y), x,10,0,"left"
    love.graphics.printf math.ceil(@max_x!), x,20,0,"left"
    love.graphics.printf math.ceil(@max_y!), x,30,0,"left"
