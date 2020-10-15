--- Module for interfacing with sox, the command line utility to play sounds.
local soundplayer = {}
local sound_path = os.getenv("PWD") .. "/StickMUDSounds/sounds"
-- The desired volume factor, defaulting to 1
local volume_factor = 1
-- Preamble for the sox command for files.
local file_preamble = "play -qV0 -v" .. volume_factor .. " " .. sound_path .. "/"

-- The postamble for playing sound files
local postamble = " &> /dev/null &"

-- The synthesized variable Preamble
local var_preamble = "play -qV0 -v" .. volume_factor .. " "

-- Play the given sound file, relative to the sounds foldr.
function soundplayer.play_file(file, iterations)
    local actual = 0
    if iterations > 0 then
        local actual = iterations - 1
    else
        actual = "-" -- repeat indefinitely
    end
    local result = core:exec(file_preamble .. file .. " repeat " .. actual .. postamble .. " echo $!")
        return result:stdout()

end

-- Play the given synthesized sound, though the implementation is similar in spirit to the way in which files are played.
function soundplayer.play_var(variable)
    local response = core:exec(var_preamble .. string.format("%q", variable) .. postamble)
end
return soundplayer
