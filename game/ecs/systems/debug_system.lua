local evolved = require("lib.evolved")
local fragments = require("game.ecs.fragments")


return function(group)
    evolved:builder()
    :group(group)
    :include(fragments.INPUT)
    :execute(function(chunk, entity_list, entity_count, dt)
        print("Entity count: " .. entity_count)
        local input = evolved.get(fragments.INPUT, fragments.INPUT)
        print(string.format("Mouse: (%f, %f)", input.mouse_x, input.mouse_y))
        print(string.format("Move X: %f, Move Y: %f", input.move_x, input.move_y))
        print(string.format("Fire Pressed: %s, Fire Held: %s", input.fire_pressed, input.fire_held))
    end)
    :build()
end
