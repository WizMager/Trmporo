local evolved = require("lib.evolved")
local fragments = require("game.ecs.fragments")

local M = {}

M.GAME_GROUP = evolved.builder()
    :name("game_group")
    :epilogue(function ()
        local input = evolved.get(fragments.INPUT, fragments.INPUT)
        input.fire_pressed = false
    end)
    :build()

local debug_system = require("game.ecs.systems.debug_system")
debug_system(M.GAME_GROUP)

return M
