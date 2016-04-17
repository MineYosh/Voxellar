minetest.register_tool("chakram:chakram", {
	description = "Chakram",
	range = 1,
	inventory_image = "chakram_chakram.png",
on_use=function(itemstack, user, pointed_thing)

	if chakram_max()==false then
		minetest.chat_send_player(user:get_player_name(), "Too many chakrams: (max " .. chakram_max_number .. ")")
		return itemstack
	end


	local pos=user:getpos()
	for i, ob in pairs(minetest.get_objects_inside_radius(pos, 5)) do
		if ob:get_luaentity() and ob:get_luaentity().name=="chakram:chakr" then
			return itemstack
		end
	end

	chakramshot_user=user
	chakramshot_user_name=user:get_player_name()
	local dir = user:get_look_dir()
	local veloc=15
	pos.y=pos.y+1.5
	local m=minetest.env:add_entity(pos, "chakram:chakr")
	chakram_max(m)
	m:setvelocity({x=dir.x*veloc, y=dir.y*veloc, z=dir.z*veloc})
	m:setyaw(user:get_look_yaw()+math.pi)
	itemstack:take_item()
	minetest.sound_play("chakram_throw", {pos=pos, gain = 1.0, max_hear_distance = 5,})
	return itemstack
end,
})

minetest.register_entity("chakram:chakr",{
	hp_max = 999,
	physical = false,
	weight = 0,
	visual="mesh",
	mesh="chakram_chakram.obj",
	visual_size = {x=1, y=1},
	textures = {"chakram_chakram.png","chakram_chakram.png","chakram_chakram.png","chakram_chakram.png","chakram_chakram.png","chakram_chakram.png"},
	colors = {}, 
	spritediv = {x=1, y=1},
	initial_sprite_basepos = {x=1, y=1},
	is_visible = true,
	makes_footstep_sound = false,
	automatic_rotate = math.pi * 4,
	timer = 0,
	timer2 = 0,
	timer3 = 0,
	stuck = 0,
	user={},
	user_name="",
	chakram_s=1,
on_punch=function(self, puncher, time_from_last_punch, tool_capabilities, dir)
	if puncher:get_luaentity() or (puncher:get_player_name()~=self.user_name) then
		self.timer3=-2
		self.stuck=1
	end	
	end,
	on_activate=function(self, staticdata)
		if chakramshot_user=="" then
			minetest.add_item(self.object:getpos(), "chakram:chakram")
			self.object:remove()
			return false
		end
		self.user=chakramshot_user
		self.user_name=chakramshot_user_name
		chakramshot_user_name=""
		chakramshot_user=""
	end,
	on_step = function(self, dtime)
		self.timer=self.timer+dtime
		if self.timer<0.05 then return self end
		self.timer3=self.timer3+self.timer

		if self.user==nil then
			self.timer3=10
			self.stuck=1
		end


		if self.timer3>=2 then
			if self.stuck==1 then 
				minetest.add_item(self.object:getpos(), "chakram:chakram")
				if self.ob then self.ob:set_detach() self.ob:setacceleration({x=0,y=-8,z=0}) end
				self.object:set_hp(0)
				self.object:punch(self.object, {full_punch_interval=1.0,damage_groups={fleshy=10}}, "default:bronze_pick", nil)
				return

			else
				self.timer3=-2
				self.stuck=1
			end
		end
		self.timer=0
		self.timer2=self.timer2+dtime
		self.object:set_hp(999)
		local pos=self.object:getpos()


			for i, ob in pairs(minetest.get_objects_inside_radius(pos, 2)) do
				if ob:get_hp()<10 and (not ob:get_attach()) and ob:get_luaentity() and (not ob:get_luaentity().chakram_s) then
					self.stuck=1
					self.ob=ob
					ob:set_attach(self.object, "", {x=0,y=0,z=0}, {x=0,y=0,z=0})
					self.timer3=-2
					break
				end
				if self.stuck==0 then
					if (ob:get_luaentity() and (not ob:get_luaentity().chakram_s) and (not ob:get_luaentity().itemstring) ) or ((not ob:get_luaentity()) and ob:get_player_name()~=self.user_name and pvp) then
						ob:set_hp(ob:get_hp()-5)
						ob:punch(self.user, {full_punch_interval=1.0,damage_groups={fleshy=10}}, "default:bronze_pick", nil)
						minetest.sound_play("chakram_hard_punch", {pos=ob:getpos(), gain = 1.0, max_hear_distance = 5,})
					end
				end
			end

		if self.stuck==0 then
			local name=minetest.get_node(pos).name
			if name~="air" and (minetest.get_node_group(name, "snappy")>0 or minetest.get_node_group(name, "dig_immediate")>0 or minetest.get_node_group(name, "oddly_breakable_by_hand")>0) and minetest.is_protected(pos,self.user:get_player_name())==false and string.find(name,"chest",1)==nil then 
				minetest.add_item(pos, chakram_drops(name))
				minetest.set_node(pos, {name="air"})
			elseif minetest.registered_nodes[name].walkable then
				self.timer3=-2
				self.stuck=1
			end

		else

			if self.user==nil or self.user:getpos()==nil then
				self.timer3=10
				self.stuck=1
				return
			end


			local ta=self.user:getpos()
			ta.y=ta.y+1
			local vec = {x = pos.x - ta.x, y = pos.y - ta.y, z = pos.z - ta.z}
			local amount = (vec.x ^ 2 + vec.y ^ 2 + vec.z ^ 2) ^ 0.5
			local v = -15
			vec.x = vec.x * v / amount
			vec.y = vec.y * v / amount
			vec.z = vec.z * v / amount
			self.object:setvelocity(vec)

			for i, ob in pairs(minetest.get_objects_inside_radius(pos, 2)) do
				if (not ob:get_attach()) and ((ob:get_luaentity() and (not ob:get_luaentity().itemstring) and (not ob:get_luaentity().chakram_s)) or ((not ob:get_luaentity()) and ob:get_player_name()~=self.user_name and pvp)) then
					ob:set_hp(ob:get_hp()-15)
					ob:punch(self.user, {full_punch_interval=1.0,damage_groups={fleshy=10}}, "default:bronze_pick", nil)
					minetest.sound_play("chakram_hard_punch", {pos=ob:getpos(), gain = 1.0, max_hear_distance = 5,})
				end


				if (not ob:get_luaentity()) and ob:get_player_name()==self.user_name then

					if self.user==nil or self.user:getpos()==nil  then
						self.timer3=10
						self.stuck=1
						return
					end

					if self.ob and self.ob:get_attach() and self.ob:get_hp()>0 then
						self.ob:set_detach()
						self.ob:set_hp(0)
						self.ob:punch(self.user, {full_punch_interval=1.0,damage_groups={fleshy=10}}, "default:bronze_pick", nil)
					end
					if self.object:get_attach() then self.object:set_detach() return false end
					self.user:get_inventory():add_item("main", ItemStack("chakram:chakram"))
					self.object:set_hp(0)
					self.object:punch(self.object, {full_punch_interval=1.0,damage_groups={fleshy=10}}, "default:bronze_pick", nil)
				end
			end
			for i, ob in pairs(minetest.get_objects_inside_radius(pos, 3)) do
				if ob:get_luaentity() and (not ob:get_attach()) and ob:get_luaentity().itemstring and ob:get_luaentity().itemstring~="chakram:chakram" then
					ob:punch(self.user, {full_punch_interval=1.0,damage_groups={fleshy=10}}, "default:bronze_pick", nil)
				end
			end



		end
	end,
})