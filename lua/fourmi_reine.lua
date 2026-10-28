local Fourmi = require "fourmi"
---@alias Reine table

local module = {}

---Créer une fourmi reine
---@param taille number
---@param couleur string
---@return Reine
function module.new(taille, couleur)
    local reine = Fourmi.new(taille, couleur)
    setmetatable(reine, module)

    reine.nomType = "Reine"

    function reine.agir()
        print("Je fais mon action de reine...")
    end

    return reine
end

return module
