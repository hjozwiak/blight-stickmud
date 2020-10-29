-- Functions for working with GMCP Char.Status
local status = {}
function status.process_status(data)
    local obj = json.decode(data)
    if enemy ~= "None" then
        gauges.do_enemy(obj["enemy_health"])
    end
end
return status
