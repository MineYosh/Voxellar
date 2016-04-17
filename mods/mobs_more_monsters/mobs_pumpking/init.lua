
if mobs.mod and mobs.mod == "redo" then

	local ENABLE_SPAWN_NODE = true
	local ENABLE_PUMPKIN_BOOM = true
	
	mobs:register_mob("mobs_pumpking:pumpking", {
	type = "monster",
	passive = false,
	damage = 4,
	attack_type = "dogshoot",
	reach = 1,
	shoot_interval = 0.5,
	arrow = "mobs:fireball",
	shoot_offset = 1,
	hp_min = 130,
	hp_max = 150,
	armor = 120,
	collisionbox = {-1, -1, -1, 1, 1, 1},
	visual = "mesh",
	mesh = "Pumpking.obj",
	textures = {
			{"pumpking.png"}
		},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dungeonmaster",
		shoot_attack = "mobs_fireball",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	view_range = 65,
	drops = {
		{name = "default:diamondblock", chance = 1, min = 5, max = 8},
	},
	water_damage = 1,
	lava_damage = 1,
	light_damage = 25,
	fear_height = 3,
	animation = {
		stand_start = 0,
		stand_end = 19,
		walk_start = 20,
		walk_end = 35,
		punch_start = 36,
		punch_end = 48,
		speed_normal = 15,
		speed_run = 15,
	},
})
	mobs:register_egg("mobs_pumpking:pumpking", "Pumpkin King", "lol.png", 1)
	
	mobs:register_spawn("mobs_pumpking:pumpking", {"default:dirt_with_grass"}, 1, 0, 7000, 1, 7000)
	
-- spawner block
	if ENABLE_SPAWN_NODE then
		minetest.register_node("mobs_pumpking:pumpking_spawner", {
			description = "Pumpkin King Spawner",
			tiles = {"lol.png"},
			is_ground_content = false,
			groups = {cracky=3, stone=1, mob_spawner=1},
			sounds = default.node_sound_stone_defaults({
				dug = {name="king", gain=0.25}
			})
		})
		minetest.register_abm({
			nodenames = {"mobs_pumpking:pumpking_spawner"},
			interval = 180.0,
			chance = 1,
			action = function(pos, node, active_object_count, active_object_count_wider)
				minetest.add_entity(pos, "mobs_pumpking:pumpking")
			end
		})
	end

end
