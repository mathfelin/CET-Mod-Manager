local CETMM = require ("scripts/CETMM")

local api = {}


-- enum
api.MODTYPE = {
  ARCHIVE = 1,
  ASI = 2,
  CET = 3,
  RED4EXT = 4,
  REDSCRIPT = 5
}

--[[
  returns a list of all loaded mods in the following format:
  {
    ARCHIVE = {
      {
        name = "string",
        path = "string",
        enabled = "boolen",
        type = "string",
        formated_name = "string",
      },
      ...
    },
    ASI = {},
    CET = {},
    RED4EXT = {},
    REDSCRIPT = {},
  }
]]
function api.GetModList()
  return CETMM.GetModList().GetConstList()
end

--[[
  string: aName
  api.MODTYPE: aModType
  returns false when no mod has found, returns the mod info when the mod has been found:
  {
    name = "string",
    path = "string",
    enabled = "boolen",
    type = "string",
    formated_name = "string",
  }
]]
function api.HasMod(aName, aModType)
  return CETMM.GetModList().HasMod(aName, aModType)
end

return api