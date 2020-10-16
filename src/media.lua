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

end
end
gmcp.receive("Client.Media.Play", handle_play)

local function handle_stop(data)
    blight:output("We were asked to stop the media.")
    core:exec("kill " .. playing["pid"])
    playing = nil
end

gmcp.receive("Client.Media.Stop", handle_stop)


return media
