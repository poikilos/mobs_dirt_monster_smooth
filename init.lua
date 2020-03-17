
local path = minetest.get_modpath("mobs_dirt_monster_smooth")

-- Intllib
local S
if minetest.global_exists("intllib") then
	if intllib.make_gettext_pair then
		-- New method using gettext.
		S = intllib.make_gettext_pair()
	else
		-- Old method using text files.
		S = intllib.Getter()
	end
else
	S = function(s) return s end
end
mobs.intllib = S

-- Monsters

dofile(path .. "/scripts/dirt_monster.lua") -- PilzAdam


print ("[MOD] Mobs Redo 'dirt_monster' (smooth version) loaded")
