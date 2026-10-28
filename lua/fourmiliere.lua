local FourmiSimulee = require "fourmi_simulee"
local Fourmi = require "fourmi"
---@alias Fourmiliere table
---@alias Fourmi table

local module

---Création d'une fourmilière
---@param modele Fourmi le modèle à utiliser
---@return Fourmiliere
function module.new(modele)
    local fourmiliere = setmetatable({}, module)
    fourmiliere.__index = fourmiliere

    --privé
    local fourmis_simulees = {}
    local fourmi = modele or Fourmi.new(10, "rouge")

    --publique
    function fourmiliere.naissanceFourmis()
        table.insert(fourmiliere.fourmis_simulees, FourmiSimulee.new(fourmi))
    end

    return fourmiliere
end

return module
