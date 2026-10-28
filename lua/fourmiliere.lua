local FourmiSimulee = require "fourmi_simulee"
local FourmiOuvriere = require "fourmi_ouvriere"
local FourmiReine = require "fourmi_reine"
---@alias Fourmiliere table
---@alias Fourmi table

local module = {}

---Création d'une fourmilière
---@param modele Fourmi le modèle à utiliser
---@return Fourmiliere
function module.new(modele)
    local fourmiliere = setmetatable({}, module)
    fourmiliere.__index = fourmiliere

    --privé
    local fourmis_simulees = {}
    local fourmi = modele or FourmiOuvriere.new(10, "rouge")


    table.insert(fourmis_simulees, FourmiSimulee.new(FourmiReine.new(10, "rouge")))

    --publique
    function fourmiliere.naissanceFourmis()
      table.insert(fourmis_simulees, FourmiSimulee.new(fourmi))
    end

    function fourmiliere.exec()
        for k, v in ipairs(fourmis_simulees) do
          v.fourmi.agir()
        end
    end

    return fourmiliere
end

return module
