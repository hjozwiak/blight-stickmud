-- The main launchpoint for the package.
-- Responsible for loading modules, welcoming the user, and establishing a connection to the MUD.
-- Set up the path for the modules.
package.path = os.getenv("PWD") .. "/src/?.lua;" .. package.path

-- Load in the modules.
cfg = require("config")
sp = require("soundplayer")
md = require("media")

-- Initialize the GMCP interface.

local function register_gmcp_mods()
    for index, item in pairs(cfg.gmcp_modules) do
        gmcp.register(item)
    end
end

gmcp.on_ready(register_gmcp_mods)

function connect()
    blight:connect(cfg.host, cfg.port, cfg.tls)
end

blight:add_alias("^login$", connect)

blight:output("Welcome to the StickMUD experience for BlightMUD! Please type login to play.")
