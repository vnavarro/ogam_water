module "maps_data", package.seeall
level1 = ->
  {
    player: {
      position: {
        x: 1,
        y: 10
      }
    },
    layers: {
      sprites: {
        {
          name: 'sand',
          x: 9,
          y: 1
        },
        {
          name: 'sand',
          x: 8,
          y: 2
        },
        {
          name: 'sand',
          x: 9,
          y: 2
        },
        {
          name: 'sand',
          x: 10,
          y: 2
        },
        {
          name: 'quicksand',
          x: 8,
          y: 3
        },
        {
          name: 'sand',
          x: 9,
          y: 3
        },
        {
          name: 'sand',
          x: 10,
          y: 3
        },
        {
          name: 'sand',
          x: 8,
          y: 4
        },
        {
          name: 'sand',
          x: 9,
          y: 4
        },
        {
          name: 'rock',
          x: 10,
          y: 4
        },
        {
          name: 'rock',
          x: 1,
          y: 5
        },
        {
          name: 'rock',
          x: 2,
          y: 5
        },
        {
          name: 'rock',
          x: 3,
          y: 5
        },
        {
          name: 'sand',
          x: 4,
          y: 5
        },
        {
          name: 'quicksand',
          x: 5,
          y: 5
        },
        {
          name: 'quicksand',
          x: 6,
          y: 5
        },
        {
          name: 'rock',
          x: 7,
          y: 5
        },
        {
          name: 'rock',
          x: 7,
          y: 6
        },
        {
          name: 'rock',
          x: 10,
          y: 6
        },
        {
          name: 'sand',
          x: 7,
          y: 7
        },
        {
          name: 'rock',
          x: 8,
          y: 7
        },
        {
          name: 'sand',
          x: 9,
          y: 7
        },
        {
          name: 'sand',
          x: 7,
          y: 8
        },
        {
          name: 'rock',
          x: 7,
          y: 9
        },
        {
          name: 'rock',
          x: 8,
          y: 10
        }
      }
    }
  }

export from_level
from_level = (index) ->
  if index == 1 then
    return level1!
