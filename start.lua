-- The main launchpoint for the package.
-- Responsible for loading modules, welcoming the user, and establishing a connection to the MUD.
<<<<<<< HEAD

=======
>>>>>>> v1-features
-- Set up the path for the modules.
package.path = os.getenv("PWD") .. "/src/?.lua;" .. package.path

-- Load in the modules.
require("config")
<<<<<<< HEAD
sp = require("soundplayer")
-- blight:output("Welcome to the StickMUD experience for BlightMUD! Please type login to play.")
=======

-- Kill a module that is loaded.
-- modname: the module name
function modkill(modname)
    if package.loaded[modname] then
        package.loaded[modname] = nil
        _G[modname] = nil
    else
        blight:output("Sorry, " .. modname .. " isn't loaded.")
    end
end

-- Reload the given module.
-- modname: the name of the module to reload.
function modreload(modname)
    modkill(modname)
    require(modname)
end

blight:add_alias("^modreload (\\w+)$", function(matches)
    modreload(matches[2])
end)

blight:add_alias("^modkill (\\w+)$", function(matches)
    modkill(matches[2])
end)

blight:output("Welcome to the StickMUD experience for BlightMUD! Please type login to play.")
>>>>>>> v1-features
