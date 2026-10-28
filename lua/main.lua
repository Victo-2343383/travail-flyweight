local Fourmiliere = require "fourmiliere"
local Fourmi = require "fourmi"


local modele = Fourmi.new(4, "rouge")
local nest = Fourmiliere.new(modele)

for i=1, 100000000 do
	nest.naissanceFourmis()
end
