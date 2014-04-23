require 'levels_map'
Sprite = require 'sprite'

class Scene
  new: =>
    @floor_layer = Sprite 'resources/imgs/floor_1.jpg', 160, 0
    @grid_layer = love.graphics.newImage 'resources/imgs/grid64_10x10.png'
    @sprites_layer = {}

  load_map: (level) =>
    @map = maps_data.from_level(level)

  build_map: =>
    for key, sprite in ipairs(@map.layers.sprites)
      x, y = @positions sprite
      table.insert @sprites_layer, Sprite 'resources/imgs/'..sprite.name..'.png', x, y

  positions: (sprite) =>
    return 160 + ((sprite.x - 1) * 64), ((sprite.y - 1) * 64)

  draw: =>
    @floor_layer\draw!
    love.graphics.draw(@grid_layer, 160, 0)
    for key, sprite in ipairs(@sprites_layer)
      sprite\draw!

  update: (dt) =>
    @floor_layer\update dt
