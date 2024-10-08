return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 17,
  nextobjectid = 138,
  properties = {
    ["border"] = "undertale/tundra",
    ["light"] = true,
    ["name"] = "Snowdin - Box Road"
  },
  tilesets = {
    {
      name = "tundratiles",
      firstgid = 1,
      filename = "../tilesets/tundratiles.tsx",
      exportfilename = "../tilesets/tundratiles.lua"
    },
    {
      name = "objects",
      firstgid = 676,
      filename = "../tilesets/objects.tsx",
      exportfilename = "../tilesets/objects.lua"
    },
    {
      name = "icewater",
      firstgid = 691,
      filename = "../tilesets/icewater.tsx"
    },
    {
      name = "watertiles",
      firstgid = 712,
      filename = "../tilesets/watertiles.tsx",
      exportfilename = "../tilesets/watertiles.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 1,
      name = "tiles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41,
        812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812,
        812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812,
        812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812,
        812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812, 812,
        1, 1, 705, 705, 705, 705, 705, 705, 705, 705, 705, 705, 705, 705, 705, 1,
        1, 1, 29, 29, 29, 29, 22, 20, 23, 29, 29, 29, 29, 29, 29, 1,
        1, 1, 1, 1, 1, 1, 19, 20, 21, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 19, 20, 21, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 19, 20, 21, 1, 1, 1, 1, 1, 1, 1
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 12,
      name = "tiles2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        362, 363, 364, 363, 364, 365, 0, 0, 0, 0, 0, 0, 299, 300, 389, 390,
        371, 372, 373, 372, 373, 374, 0, 0, 0, 0, 0, 299, 308, 309, 310, 399,
        380, 381, 382, 381, 382, 383, 0, 0, 0, 0, 0, 308, 309, 318, 327, 328,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 307, 308, 309, 318, 327, 318, 319,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 316, 317, 318, 327, 328, 327, 328,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 325, 326, 327, 328, 327, 328, 329
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 16,
      name = "trees",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        361, 319, 318, 319, 365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        317, 328, 327, 328, 329, 365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        398, 399, 318, 399, 400, 374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        407, 408, 337, 408, 409, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        326, 327, 328, 329, 330, 419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 20,
          name = "spawn",
          type = "",
          shape = "point",
          x = 300,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 13,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 97,
          name = "",
          type = "",
          shape = "rectangle",
          x = 380,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 101,
          name = "",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 98,
          name = "",
          type = "",
          shape = "polygon",
          x = 400,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -40 },
            { x = 40, y = 0 }
          },
          properties = {}
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "polygon",
          x = 440,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -40 },
            { x = 40, y = 0 }
          },
          properties = {}
        },
        {
          id = 100,
          name = "",
          type = "",
          shape = "polygon",
          x = 480,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -40 },
            { x = 40, y = 0 }
          },
          properties = {}
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 240,
          width = 640,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 280,
          width = 240,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 105,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 440,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "tundra3",
            ["marker"] = "entry3"
          }
        },
        {
          id = 106,
          name = "enemy",
          type = "",
          shape = "rectangle",
          x = 380,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "dummy_ut",
            ["lightencounter"] = "dummy"
          }
        },
        {
          id = 123,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 125,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 126,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 127,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 128,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 129,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 131,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 132,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 133,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 134,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 135,
          name = "waterdivot",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 107,
          name = "encounterzone",
          type = "",
          shape = "point",
          x = 21.1818,
          y = 19.6319,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["encgroup"] = "test"
          }
        },
        {
          id = 137,
          name = "enemy",
          type = "",
          shape = "rectangle",
          x = 261.247,
          y = 282.504,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "dummy",
            ["encounter"] = "dummy"
          }
        }
      }
    }
  }
}
