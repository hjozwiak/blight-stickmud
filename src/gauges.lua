local gauges = {}
local oldhp = 0
local oldsp = 0
local oldfp = 0

local function nearest_percentage(n)
    return n - n % 10
end

local function do_health(n)
    if n ~= oldhp then
        oldhp = n
        sp.play_var(sv.health[tonumber(n)])
    end
end

local function do_fp(n)
    if n ~= oldfp then
        oldfp = n
        sp.play_var(sv.fatigue[tonumber(n)])
    end
end

local function do_sp(n)
    if n ~= oldsp then
        oldsp = n
        sp.play_var(sv.spell[tonumber(n)])
    end
end

-- The main processing function.
local function process_vitals(data)
    local obj = json.decode(data)
    local hit = tonumber(obj["hp"])
    local maxhit = tonumber(obj["maxhp"])
    local fat = tonumber(obj["fp"])
    local maxfat = tonumber(obj["maxfp"])
    local spell = tonumber(obj["sp"])
    local maxspell = tonumber(obj["maxsp"])
    local hit_percent = string.format("%d", nearest_percentage((hit / maxhit) * 100))
    local spell_percent = string.format("%d", nearest_percentage((spell / maxspell) * 100))
    local fat_percent = string.format("%d", nearest_percentage((fat / maxfat) * 100))
    do_health(hit_percent)
    do_sp(spell_percent)
    do_fp(fat_percent)
end
gmcp.receive("Char.Vitals", process_vitals)
return gauges