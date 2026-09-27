local evolved = require("lib.evolved")
local fragments = require("game.ecs.fragments")


return function(group)
    evolved:builder()
    :group(group)
    :include(fragments.POSITION_X)
    :execute(function(chunk, entity_list, entity_count, dt)
        print("Entity count: " .. entity_count)
    end)
    :build()
end
