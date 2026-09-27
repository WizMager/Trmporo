local evolved = require("lib.evolved")

local M = {}

M.GAME_GROUP = evolved.builder()
    :name("game_group")
    :build()

local debug_system = require("game.ecs.systems.debug_system")
debug_system(M.GAME_GROUP)

return M
