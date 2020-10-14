-- Support for playing media files.
-- In particular, background music and sounds provided by the MUD Sound Protocol.
local media = {}
local function handle_play(data)
    blight:output(data)
    obj = json.decode(data)
    sp.play_file(obj["name"], tonumber(obj["loops"]))
end
gmcp.receive("Client.Media.Play", handle_play)
return media