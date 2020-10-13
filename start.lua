-- The main launchpoint for the package.
-- Responsible for loading modules, welcoming the user, and establishing a connection to the MUD.

-- Set up the path for the modules.
package.path = os.getenv("PWD") .. "/src/?.lua;" .. package.path

-- Load in the modules.
require("config")
local test = require "test"

-- blight:output("Welcome to the StickMUD experience for BlightMUD! Please type login to play.")
test:say_hi()