package = "kong-rate-limiting-hazy-memcachd"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/HanleyDan/kong-rate-limiting-hazy-memcachd",
  tag = "0.1.0"
}

description = {
  summary = "A fork of the open source Kong rate limiting plugin using Hazelcast as a backend via the memcachd interface.",
  homepage = "http://github.com/HanleyDan/kong-rate-limiting-hazy-memcachd",
  license = "Hazelcast"
}

dependencies = {
}

local pluginName = "kong-rate-limiting-hazy-memcachd"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".expiration"] = "kong/plugins/"..pluginName.."/expiration.lua",
    ["kong.plugins."..pluginName..".policies.init"] = "kong/plugins/"..pluginName.."/policies/init.lua",
    ["kong.plugins."..pluginName..".policies.cluster"] = "kong/plugins/"..pluginName.."/policies/cluster.lua",
  }
}
