local gauges = {}

function gauges.round(n)
    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

local function process_vitals(data)
    blight:output(data)
    local obj = json.decode(data)
    local hit = obj["hp"]
    local maxhit = obj["maxhp"]
    local spell = obj["sp"]
    local maxspell = obj["maxsp"]
    local fat = obj["fp"]
    local maxfat = obj["maxfp"]
    local hit_percent = gauges.round((hit / maxhit) * 100)
    local fatigue_percent = gauges.round((fat / maxfat) * 100)
    local spell_percent = gauges.round((spell / maxspell) * 100)
    sp.play_var(sv.health[hit_percent])
    sp.play_var(sv.fatigue[fatigue_percent])
    sp.play_var(sv.spell[spell_percent])
end

gmcp.receive("Char.Vitals", process_vitals)
return gauges
