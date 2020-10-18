--- Module for interfacing with sox, the command line utility to play sounds.
local soundplayer = {}
local sound_path = os.getenv("PWD") .. "/StickMUDSounds/sounds"
-- The desired volume factor, defaulting to 1
local volume_factor = 1
-- The step to incremend/decrement the volume factor by
local step = 0.1
-- Preamble for the sox command for files.
local function generate_file_preamble()
    return "play -qV0 -v" .. volume_factor .. " " .. sound_path .. "/"
end

-- The postamble for playing sound files
local postamble = " &> /dev/null &"

-- The synthesized variable Preamble
local function generate_var_preamble()
    return "play -qV0 -v" .. volume_factor .. " "
end

-- Play the given sound file, relative to the sounds foldr.
function soundplayer.play_file(file, iterations)
    local actual = 0
    if iterations > 0 then
        local actual = iterations - 1
    else
        actual = "-" -- repeat indefinitely
    end
    local result = core:exec(generate_file_preamble() .. file .. " repeat " .. actual .. postamble .. " echo $!")
    return result:stdout()

end

-- Play the given synthesized sound, though the implementation is similar in spirit to the way in which files are played.
function soundplayer.play_var(variable)
    core:exec(generate_var_preamble() .. string.format("%q", variable) .. postamble)
end

local function increment()
    if volume_factor < 1 then
        volume_factor = volume_factor + step
        sp.play_var(sv.misc["volume_change"])
    end
end

local function decrement()
    if volume_factor > 0 then
        volume_factor = volume_factor - step
        sp.play_var(sv.misc["volume_change"])
    end
end

blight:bind("alt-?", increment)

blight:bind("alt->", decrement)

return soundplayer
