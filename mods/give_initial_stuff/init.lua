minetest.register_on_newplayer(function(player)
	--print("on_newplayer")
	if minetest.setting_getbool("give_initial_stuff") then
		minetest.log("action", "Giving initial stuff to player "..player:get_player_name())
		player:get_inventory():add_item('main', 'default:stick 10')
		player:get_inventory():add_item('main', 'default:torch 20')
		player:get_inventory():add_item('main', 'default:copper_ingot 3')
		player:get_inventory():add_item('main', 'default:cobble 20')
	end
end)

