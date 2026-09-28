local evolved = require("lib.evolved")

local POSITION_X = evolved.builder()
    :name("POSITION_X")
    :build()

local POSITION_Y = evolved.builder()
    :name("POSITION_Y")
    :build()

local VELOCITY_X = evolved.builder()
    :name("VELOCITY_X")
    :build()

local VELOCITY_Y = evolved.builder()
    :name("VELOCITY_Y")
    :build()

local INPUT = evolved.builder()
	:name("INPUT")
	:build()

return {
    POSITION_X = POSITION_X,
    POSITION_Y = POSITION_Y,
    VELOCITY_X = VELOCITY_X,
    VELOCITY_Y = VELOCITY_Y,
    INPUT = INPUT
}
