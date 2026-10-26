local Fourmi = require "fourmi"
---@alias Garde table

local module

---Créer une fourmi ouvrière
---@param taille number
---@param couleur string
---@return Garde
function module.new(taille, couleur)
    local garde = Fourmi.new(taille, couleur)
    setmetatable(garde, module)

    garde.nomType = "Garde"

    function garde.agir()
        --action de la fourmi garde
    end

    return garde
end

return module
