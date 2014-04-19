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
