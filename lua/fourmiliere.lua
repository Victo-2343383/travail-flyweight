local FourmiSimulee = require "fourmi_simulee"
local Fourmi = require "fourmi"
---@alias Fourmiliere table

local module

---Création d'une fourmilière
---@return Fourmiliere
function module.new()
    local fourmiliere = setmetatable({}, module)
    fourmiliere.__index = fourmiliere

    --privé
    local fourmis_simulees = {}
    local fourmi = Fourmi.new(10, "rouge")

    --publique
    function fourmiliere.naissanceFourmis()
        table.insert(fourmiliere.fourmis_simulees, FourmiSimulee.new(fourmi))
    end

    return fourmiliere
end

return module
