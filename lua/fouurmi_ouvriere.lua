local Fourmi = require "fourmi"
---@alias Ouvriere table

local module

---Créer une fourmi ouvrière
---@param taille number
---@param couleur string
---@return Ouvriere
function module.new(taille, couleur)
    local ouvriere = Fourmi.new(taille, couleur)
    setmetatable(ouvriere, module)

    ouvriere.nomType = "Ouvrière"

    function ouvriere.agir()
        --action de la fourmi ouvrière
    end

    return ouvriere
end

return module
