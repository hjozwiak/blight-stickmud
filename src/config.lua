-- Configuration for the package.
local config = {}
config.tls = true -- Should we use TLS when playing the game?
config.host = "stickmud.com" -- change this if you need
config.port = 8680 -- change this if you need
config.gmcp_modules = {"Client.Media", "Char", "Room"} -- The GMCP modules to register
return config