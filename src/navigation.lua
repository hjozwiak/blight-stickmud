local navigation = {}

blight:bind("alt-i", function()
    blight:send("north", {
        gag = true
    })
end)

blight:bind("alt-l", function() blight:send("east", {gag = true}) end)

blight:bind("alt-j", function() blight:send("west", {gag = true}) end)

blight:bind("alt-,", function() blight:send("south", {gag = true}) end)

blight:bind("alt-o", function() blight:send("northeast", {gag = true}) end)

blight:bind("alt-u", function() blight:send("northwest", {gag = true}) end)

blight:bind("alt-.", function() blight:send("southeast", {gag = true}) end)

blight:bind("alt-m", function() blight:send("southwest", {gag = true}) end)

blight:bind("alt-[", function() blight:send("up", {gag = true}) end)

blight:bind("alt-]", function() blight:send("down", {gag = true}) end)
return navigation