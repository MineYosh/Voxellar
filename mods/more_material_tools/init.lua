--
-- Picks
--

minetest.register_tool("more_material_tools:pick_copper", {
	description = "copper Pickaxe(mele damage 4|swing speed 0.6 sec|range 4)",
	inventory_image = "mmtools_pick_copper.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.95}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = 'more_material_tools:pick_copper',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_tool("more_material_tools:pick_glass", {
	description = "glass Pickaxe(mele damage 7|swing speed 0.3 sec|range 4)",
	inventory_image = "mmtools_pick_glass.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.95}, uses=1, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_craft({
	output = 'more_material_tools:pick_glass',
	recipe = {
		{'default:glass', 'default:glass', 'default:glass'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_tool("more_material_tools:pick_cactus", {
	description = "cactus Pickaxe(mele damage 6|swing speed 0.5 sec|range 4)",
	inventory_image = "mmtools_pick_cactus.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=10.00, [3]=1.40}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = 'more_material_tools:pick_cactus',
	recipe = {
		{'default:cactus', 'default:cactus', 'default:cactus'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_tool("more_material_tools:pick_apple", {
	description = "apple Pickaxe(mele damage 2|swing speed 0.2 sec|range 4)",
	inventory_image = "mmtools_pick_apple.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=10.00, [3]=1.40}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},
})
minetest.register_craft({
	output = 'more_material_tools:pick_apple',
	recipe = {
		{'default:apple', 'default:apple', 'default:apple'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_tool("more_material_tools:pick_obsidian", {
	description = "obsidian Pickaxe(mele damage 13|swing speed 1 sec|range 5)",
	inventory_image = "mmtools_pick_obsidian.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.4, [3]=0.1}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=13},
	},
})

minetest.register_craft({
	output = 'more_material_tools:pick_obsidian',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'', 'bucket:bucket_lava', ''},
		{'', 'default:obsidian_shard', ''},
	}
})
minetest.register_tool("more_material_tools:pick_brick", {
	description = "brick Pickaxe(mele damage 10|swing speed 5 sec|range 4)",
	inventory_image = "mmtools_pick_brick.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 5,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=2.25, [2]=0.90, [3]=0.475}, uses=1, maxlevel=2},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_craft({
	output = 'more_material_tools:pick_brick',
	recipe = {
		{'default:clay_brick', 'default:clay_brick', 'default:clay_brick'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
--
-- Shovels
--

minetest.register_tool("more_material_tools:shovel_cactus", {
	description = "cactus Shovel(mele damage 5|swing speed 0.5 sec|range 5)",
	inventory_image = "mmtools_shovel_cactus.png",
	range = 5,
	wield_image = "mmtools_shovel_cactus.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=2.60, [2]=1.40, [3]=0.50}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = 'more_material_tools:shovel_cactus',
	recipe = {
		{'default:cactus'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_tool("more_material_tools:shovel_apple", {
	description = "apple Shovel(mele damage 1|swing speed 0.2 sec|range 5)",
	inventory_image = "mmtools_shovel_apple.png",
	range = 5,
	wield_image = "mmtools_shovel_apple.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=2.60, [2]=1.40, [3]=0.50}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=1},
	},
})

minetest.register_craft({
	output = 'more_material_tools:shovel_apple',
	recipe = {
		{'default:apple'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_tool("more_material_tools:shovel_obsidian", {
	description = "obsidian Shovel(mele damage 12|swing speed 1 sec|range 6)",
	inventory_image = "mmtools_shovel_obsidian.png",
	range = 6,
	wield_image = "mmtools_shovel_obsidian.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=0.60, [2]=0.40, [3]=0.10}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_craft({
	output = 'more_material_tools:shovel_obsidian',
	recipe = {
		{'default:obsidian'},
		{'bucket:bucket_lava'},
		{'default:obsidian_shard'},
	}
})

minetest.register_tool("more_material_tools:shovel_copper", {
	description = "copper Shovel(mele damage 3|swing speed 0.6 sec|range 5)",
	inventory_image = "mmtools_shovel_copper.png",
	range = 5,
	wield_image = "mmtools_shovel_copper.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.25,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.65, [2]=1.00, [3]=0.45}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_craft({
	output = 'more_material_tools:shovel_copper',
	recipe = {
		{'default:copper_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})
minetest.register_tool("more_material_tools:shovel_glass", {
	description = "copper Shovel(mele damage 6|swing speed 0.3 sec|range 5)",
	inventory_image = "mmtools_shovel_glass.png",
	range = 5,
	wield_image = "mmtools_shovel_glass.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.65, [2]=1.00, [3]=0.45}, uses=1, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
})
minetest.register_craft({
	output = 'more_material_tools:shovel_glass',
	recipe = {
		{'default:glass'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'more_material_tools:pick_copper',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_tool("more_material_tools:shovel_brick", {
	description = "brick Shovel(mele damage 8|swing speed 5 sec|range 5)",
	inventory_image = "mmtools_shovel_brick.png",
	range = 5,
	wield_image = "mmtools_shovel_brick.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 5.0,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=0.825, [2]=0.50, [3]=0.225}, uses=1, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_craft({
	output = 'more_material_tools:shovel_brick',
	recipe = {
		{'default:clay_brick'},
		{'group:stick'},
		{'group:stick'},
	}
})
--
-- Axes
--

minetest.register_tool("more_material_tools:axe_copper", {
	description = "copper Axe(mele damage 4|swing speed 0.6 sec|range 4)",
	inventory_image = "mmtools_axe_copper.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=2.65, [2]=1.65, [3]=1.15}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = 'more_material_tools:axe_copper',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot'},
		{'default:copper_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_tool("more_material_tools:axe_glass", {
	description = "glass Axe(mele damage 8|swing speed 0.3 sec|range 4)",
	inventory_image = "mmtools_axe_glass.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=2.65, [2]=1.65, [3]=1.15}, uses=1, maxlevel=1},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_craft({
	output = 'more_material_tools:axe_glass',
	recipe = {
		{'default:glass', 'default:glass'},
		{'default:glass', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_tool("more_material_tools:axe_obsidian", {
	description = "obsidian waraxe(mele damage 14|swing speed 1 sec|range 5)",
	inventory_image = "mmtools_axe_obsidian.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=0.50, [2]=0.25, [3]=0.10}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = 'more_material_tools:axe_obsidian',
	recipe = {
		{'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'bucket:bucket_lava'},
		{'', 'default:obsidian_shard'},
	}
})
minetest.register_tool("more_material_tools:axe_cactus", {
	description = "cactus Axe(mele damage 7|swing speed 0.5 sec|range 4)",
	inventory_image = "mmtools_axe_cactus.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=10.00, [2]=2.60, [3]=1.70}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = 'more_material_tools:axe_cactus',
	recipe = {
		{'default:cactus', 'default:cactus'},
		{'default:cactus', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_tool("more_material_tools:axe_apple", {
	description = "cactus Axe(mele damage 3|swing speed 0.2 sec|range 4)",
	inventory_image = "mmtools_axe_apple.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=10.00, [2]=2.60, [3]=1.70}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.register_craft({
	output = 'more_material_tools:axe_apple',
	recipe = {
		{'default:apple', 'default:apple'},
		{'default:apple', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_tool("more_material_tools:axe_brick", {
	description = "brick Axe(mele damage 12|swing speed 5 sec|range 4)",
	inventory_image = "mmtools_axe_brick.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 5.0,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=1.325, [2]=0.825, [3]=0.575}, uses=1, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = 'more_material_tools:axe_brick',
	recipe = {
		{'default:clay_brick', 'default:clay_brick'},
		{'default:clay_brick', 'group:stick'},
		{'', 'group:stick'},
	}
})
--
-- Swords
--

minetest.register_tool("more_material_tools:sword_copper", {
	description = "copper Sword(mele damage 6|swing speed 0.6 sec|range 5)",
	inventory_image = "mmtools_sword_copper.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=2.75, [2]=1.3, [3]=0.40}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_copper',
	recipe = {
		{'default:copper_ingot'},
		{'default:copper_ingot'},
		{'group:stick'},
	}
})
minetest.register_tool("more_material_tools:sword_glass", {
	description = "glass Sword(mele damage 9|swing speed 0.3 sec|range 5)",
	inventory_image = "mmtools_sword_glass.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=2.75, [2]=1.3, [3]=0.40}, uses=1, maxlevel=1},
		},
		damage_groups = {fleshy=9},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_glass',
	recipe = {
		{'default:glass'},
		{'default:glass'},
		{'group:stick'},
	}
})
minetest.register_tool("more_material_tools:sword_cactus", {
	description = "cactus Sword(mele damage 8|swing speed 0.5 sec|range 5)",
	inventory_image = "mmtools_sword_cactus.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=10.00, [2]=1.4, [3]=0.35}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=8},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_cactus',
	recipe = {
		{'default:cactus'},
		{'default:cactus'},
		{'group:stick'},
	}
})
minetest.register_tool("more_material_tools:sword_apple", {
	description = "apple Sword(mele damage 4|swing speed 0.2 sec|range 5)",
	inventory_image = "mmtools_sword_apple.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=10.00, [2]=1.4, [3]=0.35}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_apple',
	recipe = {
		{'default:apple'},
		{'default:apple'},
		{'group:stick'},
	}
})
minetest.register_tool("more_material_tools:sword_obsidian", {
	description = "obsidian greatsword(mele damage 15|swing speed 1 sec|range 6)",
	inventory_image = "mmtools_sword_obsidian.png",
	range = 6,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=0.10, [2]=0.05, [3]=0.01}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_obsidian',
	recipe = {
		{'default:obsidian'},
		{'default:obsidian'},
		{'bucket:bucket_lava'},
	}
})
minetest.register_tool("more_material_tools:sword_copper", {
	description = "copper Sword(mele damage 3|swing speed 0.6 sec|range 2)",
	inventory_image = "mmtools_sword_copper.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=2.75, [2]=1.3, [3]=0.40}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_copper',
	recipe = {
		{'default:copper_ingot'},
		{'default:copper_ingot'},
		{'group:stick'},
	}
})

minetest.register_tool("more_material_tools:sword_brick", {
	description = "brick Sword(mele damage 15|swing speed 5 sec|range 5)",
	inventory_image = "mmtools_sword_brick.png",
	range = 5,
	tool_capabilities = {
		full_punch_interval = 5,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=1.325, [2]=0.65, [3]=0.20}, uses=1, maxlevel=2},
		},
		damage_groups = {fleshy=15},
	}
})
minetest.register_craft({
	output = 'more_material_tools:sword_brick',
	recipe = {
		{'default:clay_brick'},
		{'default:clay_brick'},
		{'group:stick'},
	}
})

--
-- Others
--

minetest.register_tool("more_material_tools:shortsword_copper", {
	description = "copper shortsword(mele damage 3|swing speed 0.3 sec|range 2)",
	inventory_image = "mmtools_shortsword_copper.png",
	wield_image = "mmtools_shortsword_copper.png^[transformR90",
	range = 3,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=2.75, [2]=1.3, [3]=0.40}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	}
})
minetest.register_craftitem("more_material_tools:cactusstick", {
	description = "cactus stick",
	inventory_image = "mmtools_cstick.png",
	groups = {stick=1},
})
minetest.register_craft({
	output = 'more_material_tools:cactusstick 4',
	recipe = {
		{'default:cactus'},
	}
})

