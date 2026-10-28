local module = {}

---Créer un modèle de fourmi.
---@param taille number
---@param couleur string
---@return table
function module.new(taille, couleur)
    fourmi = setmetatable({}, module)

    --validations
    if (type(taille) ~= "number" or taille <= 0) then error("Impossible de créer une fourmi avec une taille invalide.", 2) end
    if (type(couleur) ~= "string") then error("impossible de crééer une fourmi avec une couleur invalide", 2) end

    fourmi.taille = taille
    fourmi.couleur = couleur

    return fourmi
end

return module
