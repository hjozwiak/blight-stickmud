-- Support for playing media files.
-- In particular, background music and sounds provided by the MUD Sound Protocol.
local media = {}

local playing = nil

local function handle_play(data)
    blight:output(data)
    obj = json.decode(data)
    if playing == nil then
        local initial = {}
        local pid = sp.play_file(obj["name"], tonumber(obj["loops"]))
        initial["name"] = obj["name"]
        initial["pid"] = pid
        playing = initial
        blight:output(playing["pid"])
    elseif obj["name"] == playing["name"] then
        return

    else

        -- End the currently playing music
        if obj["type"] == "music" then
            local response = core:exec("kill " .. playing["pid"])
            local newpid = sp.play_file(obj["name"], tonumber(obj["loops"]))
            playing["name"] = obj["name"]
            playing["pid"] = newpid
        end
    end
end
gmcp.receive("Client.Media.Play", handle_play)
return media
