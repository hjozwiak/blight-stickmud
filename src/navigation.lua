local navigation = {}

blight.bind("alt-i", function()
    mud.send("north", {
        gag = true
    })
end)

blight.bind("alt-l", function() mud.send("east", {gag = true}) end)

blight.bind("alt-j", function() mud.send("west", {gag = true}) end)

blight.bind("alt-,", function() mud.send("south", {gag = true}) end)

blight.bind("alt-o", function() mud.send("northeast", {gag = true}) end)

blight.bind("alt-u", function() mud.send("northwest", {gag = true}) end)

blight.bind("alt-.", function() mud.send("southeast", {gag = true}) end)

blight.bind("alt-m", function() mud.send("southwest", {gag = true}) end)

blight.bind("alt-[", function() mud.send("up", {gag = true}) end)

blight.bind("alt-]", function() mud.send("down", {gag = true}) end)
return navigation
