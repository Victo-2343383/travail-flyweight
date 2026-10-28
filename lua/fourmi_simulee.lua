local Vector3 = require "vector3"
---@alias Fourmi table
---@alias Vector3 table

local module = {}

---Créer une fourmi simulée
---@param fourmi Fourmi
---@param position Vector3 | nil
---@return table
function module.new(fourmi, position)
    local fourmi_sim = setmetatable({}, module)

    fourmi_sim.fourmi = fourmi

    --privé
    local position = position or Vector3.new(0,0,0)
    local faim = 100
    local sante = 100
    local cibleCollecte = nil --commence avec rien dans les mains

    return fourmi_sim
end

return module
