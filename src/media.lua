-- Support for playing media files.
-- In particular, background music and sounds provided by the MUD Sound Protocol.
local media = {}

local playing = nil

function media.handle_play(data)
    local obj = json.decode(data)
    if playing == nil then
        local initial = {}
        local pid = sp.play_file(obj["name"], tonumber(obj["loops"]))
        initial["name"] = obj["name"]
        initial["pid"] = pid
        playing = initial
    elseif obj["name"] == playing["name"] then
        return

    end
end

function media.handle_stop(data)
    if playing == nil then
        return
    end
    core:exec("kill " .. playing["pid"])
    playing = nil
end


return media
