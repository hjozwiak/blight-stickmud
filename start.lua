-- The main launchpoint for the package.
-- Responsible for loading modules, welcoming the user, and establishing a connection to the MUD.
-- Set up the path for the modules.
package.path = os.getenv("PWD") .. "/src/?.lua;" .. package.path

-- Load in the modules.
misc = require("misc")
sp = require("soundplayer")
md = require("media")
sv = require("synthvars")
gauges = require("gauges")
st = require("status")
nav = require("navigation")
cfg = require("config")

-- Initialize the GMCP interface.

local function register_gmcp_stuff()
    for index, item in pairs(cfg.gmcp_stuff) do
        gmcp.register(index)
        if item ~= misc.noop then
            gmcp.receive(index, item)
        end
    end
end

gmcp.on_ready(register_gmcp_stuff)

function connect()
    mud.connect(cfg.host, cfg.port, cfg.tls)
end

alias.add("^login$", connect)

blight:output("Welcome to the StickMUD experience for BlightMUD! Please type login to play.")
