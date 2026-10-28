local Fourmiliere = require "fourmiliere"
local Fourmi = require "fourmi"


local nest = Fourmiliere.new()

for i=1, 100000000 do
	nest.naissanceFourmis()
end

nest.exec()
