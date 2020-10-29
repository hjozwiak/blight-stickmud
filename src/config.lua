-- Configuration for the package.
local config = {}
-- Interfaces to GMCP.
-- Please put these in a table, where the key is a module like Char.Vitals and the associated value is a function from the requisite package.
config.gmcp_stuff = {
    ["Char"] = misc.noop,
["client.media"] = misc.noop,
["Room"] = misc.noop,
    ["Client.Media.Stop"] = md.handle_stop,
    ["Client.Media.Play"] = md.handle_play,
    ["Char.Vitals"] = gauges.process_vitals,
    ["Char.Status"] = st.process_status
}
config.tls = false -- Should we use TLS when playing the game?
config.host = "stickmud.com" -- change this if you need
config.port = 7680 -- change this if you need
return config
