
local S = mobs.intllib


-- Dirt Monster by PilzAdam

mobs:register_mob("mobs_monster:dirt_monster_dead", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 0,
	damage = 0,
	hp_min = 10,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 0.4, 0.4},
	visual = "mesh",
	mesh = "mobs_dirt_monster.x",
	textures = {
		{"mobs_dirt_monster.png"},
	},
	visual_size = {x=2, y=2},
	blood_texture = "default_dirt.png",
	makes_footstep_sound = false,
	sounds = {},
	view_range = 0,
	walk_velocity = 0,
	run_velocity = 0,
	jump = true,
	drops = {
		{name = "default:dirt", chance = 1, min = 0, max = 2},
		{name = "default:stick",	chance = 5, min = 1, max = 3,},
		{name = "default:clay_lumo", chance = 50, min = 2, max = 6},
		{name = "flowers:mushroom_brown", chance = 70, min = 1, max = 2},
		{name = "default:iron_lump", chance = 150, min = 1, max = 1},
		{name = "default:tin_lump", chance = 150, min = 1, max = 1},
		{name = "default:copper_lump", chance = 150, min = 1, max = 1},
		{name = "default:gold_lump", chance = 180, min = 1, max = 1},
		{name = "default:mese_crystal_fragment", chance = 170, min = 1, max = 2},
		{name = "default:mese_crystal", chance = 200, min = 1, max = 1},
		{name = "default:diamond", chance = 200, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 10,
	light_damage = 1,
	fear_height = 4,
	animation = {
		speed_normal = 0,
		stand_start = 65,
		stand_end = 65,
	},
})

mobs:alias_mob("mobs:dirt_monster_dead", "mobs_monster:dirt_monster_dead") -- compatibility
