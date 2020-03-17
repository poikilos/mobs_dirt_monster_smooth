
local S = mobs.intllib


-- Dirt Monster by PilzAdam

mobs:register_mob("mobs_dirt_monster_smooth:dirt_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 1.75,
	damage = 2,
	hp_min = 15,
	hp_max = 40,
	armor = 100,
	collisionbox = {-0.4, 0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	mesh = "mobs_dirt_monster.x",
	textures = {
		{"mobs_dirt_monster.png"},
	},
	visual_size = {x=2, y=2},
	blood_texture = "default_dirt.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dirtmonster_idle",
		damage = "mobs_dirtmonster_hit",
		attack = "mobs_dirtmonster_fire",
		death =  "mobs_dirtmonster_death",
	},
	view_range = 20,
	walk_velocity = 0.85,
	run_velocity = 3.15,
	jump = true,
	drops = {
		{name = "default:dirt", chance = 1, min = 0, max = 2},
		{name = "default:stick",	chance = 5, min = 1, max = 3,},
		{name = "default:clay_lumo", chance = 50, min = 2, max = 6},
		{name = "flowers:mushroom_brown", chance = 70, min = 1, max = 2},
		{name = "default:iron_lump", chance = 120, min = 1, max = 1},
		{name = "default:tin_lump", chance = 130, min = 1, max = 1},
		{name = "default:copper_lump", chance = 130, min = 1, max = 1},
		{name = "default:gold_lump", chance = 150, min = 1, max = 1},
		{name = "default:mese_crystal_fragment", chance = 160, min = 1, max = 3},
		{name = "default:mese_crystal", chance = 160, min = 1, max = 1},
		{name = "default:diamond", chance = 160, min = 1, max = 1},
	},
	water_damage = 2.5,
	lava_damage = 20,
	light_damage = 1,
	fear_height = 4,
	animation = {
		speed_normal = 12,
		--Run speed is not work on X format of models!
    	speed_run = 16,
		--Run speed is not work on X format of models!
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 34,
		run_start = 35,
		run_end = 54,
		punch_start = 55,
		punch_end = 64,
	},
})


local spawn_on = "default:dirt_with_grass"

if minetest.get_modpath("ethereal") then
	spawn_on = "ethereal:gray_dirt"
end

mobs:spawn({
	name = "mobs_dirt_monster_smooth:dirt_monster",
	nodes = {spawn_on},
	min_light = 0,
	max_light = 9,
	chance = 5500,
	active_object_count = 4,
	min_height = -32,
	day_toggle = false,
})


mobs:register_egg("mobs_dirt_monster_smooth:dirt_monster", S("Dirt Monster"), "default_dirt.png", 1)


mobs:alias_mob("mobs:dirt_monster", "mobs_dirt_monster_smooth:dirt_monster") -- compatibility
