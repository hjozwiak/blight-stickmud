-- Configuration for the package.
local config = {}
config.tls = true -- Should we use TLS when playing the game?
config.gmcp_modules = {"Client.Media", "Char", "Room"} -- The GMCP modules to register
return config