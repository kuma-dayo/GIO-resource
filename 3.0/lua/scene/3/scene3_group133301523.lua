-- 基础信息
local base_info = {
	group_id = 133301523
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {523001,523002,523003,523004,523005,523021,523022},
	reset_gear_list = {}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 523001, gadget_id = 70900050, pos = { x = -481.515, y = 264.488, z = 3717.504 }, rot = { x = 356.571, y = 286.057, z = 350.338 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 523002, gadget_id = 70900050, pos = { x = -480.592, y = 261.576, z = 3730.191 }, rot = { x = 1.531, y = 298.561, z = 343.209 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	{ config_id = 523003, gadget_id = 70900050, pos = { x = -466.130, y = 259.876, z = 3723.405 }, rot = { x = 12.054, y = 12.438, z = 343.851 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	{ config_id = 523004, gadget_id = 70900050, pos = { x = -457.441, y = 256.377, z = 3709.550 }, rot = { x = 350.421, y = 1.444, z = 342.897 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	{ config_id = 523005, gadget_id = 70900050, pos = { x = -446.977, y = 252.427, z = 3707.710 }, rot = { x = 5.322, y = 39.652, z = 355.190 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	{ config_id = 523006, gadget_id = 70211121, pos = { x = -479.535, y = 263.756, z = 3721.798 }, rot = { x = 8.669, y = 15.675, z = 0.058 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 523012, gadget_id = 70230111, pos = { x = -481.310, y = 263.787, z = 3723.891 }, rot = { x = 3.698, y = 39.913, z = 68.120 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 523013, gadget_id = 70230112, pos = { x = -480.824, y = 263.080, z = 3726.459 }, rot = { x = 8.418, y = 21.980, z = 70.282 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 523014, gadget_id = 70230112, pos = { x = -479.558, y = 263.126, z = 3725.123 }, rot = { x = 4.749, y = 68.787, z = 82.288 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 523015, gadget_id = 70230112, pos = { x = -478.094, y = 262.831, z = 3723.209 }, rot = { x = 22.139, y = 28.836, z = 96.600 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 523016, gadget_id = 70230112, pos = { x = -476.769, y = 263.223, z = 3722.897 }, rot = { x = 352.296, y = 56.958, z = 89.339 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 523017, gadget_id = 70230112, pos = { x = -475.364, y = 262.726, z = 3723.775 }, rot = { x = 11.674, y = 63.487, z = 80.135 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 523018, gadget_id = 70230112, pos = { x = -475.869, y = 263.530, z = 3721.523 }, rot = { x = 358.047, y = 57.953, z = 122.746 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 523021, gadget_id = 70900050, pos = { x = -422.242, y = 247.411, z = 3708.611 }, rot = { x = 16.975, y = 18.814, z = 2.356 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	{ config_id = 523022, gadget_id = 70900050, pos = { x = -416.960, y = 243.740, z = 3689.573 }, rot = { x = 338.612, y = 18.266, z = 1.039 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1523007, name = "GADGET_STATE_CHANGE_523007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523007", action = "action_EVENT_GADGET_STATE_CHANGE_523007", trigger_count = 0 },
	{ config_id = 1523008, name = "VARIABLE_CHANGE_523008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_523008", trigger_count = 0 },
	{ config_id = 1523009, name = "VARIABLE_CHANGE_523009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_523009", action = "action_EVENT_VARIABLE_CHANGE_523009", trigger_count = 0 },
	{ config_id = 1523010, name = "VARIABLE_CHANGE_523010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_523010", action = "action_EVENT_VARIABLE_CHANGE_523010", trigger_count = 0 },
	{ config_id = 1523011, name = "GADGET_STATE_CHANGE_523011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523011", action = "action_EVENT_GADGET_STATE_CHANGE_523011", trigger_count = 0 },
	-- 1
	{ config_id = 1523031, name = "GADGET_STATE_CHANGE_523031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523031", action = "action_EVENT_GADGET_STATE_CHANGE_523031", trigger_count = 0 },
	-- 2
	{ config_id = 1523032, name = "GADGET_STATE_CHANGE_523032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523032", action = "action_EVENT_GADGET_STATE_CHANGE_523032", trigger_count = 0 },
	-- 3
	{ config_id = 1523033, name = "GADGET_STATE_CHANGE_523033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523033", action = "action_EVENT_GADGET_STATE_CHANGE_523033", trigger_count = 0 },
	-- 4
	{ config_id = 1523034, name = "GADGET_STATE_CHANGE_523034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523034", action = "action_EVENT_GADGET_STATE_CHANGE_523034", trigger_count = 0 },
	-- 5
	{ config_id = 1523035, name = "GADGET_STATE_CHANGE_523035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523035", action = "action_EVENT_GADGET_STATE_CHANGE_523035", trigger_count = 0 },
	-- 6
	{ config_id = 1523036, name = "GADGET_STATE_CHANGE_523036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523036", action = "action_EVENT_GADGET_STATE_CHANGE_523036", trigger_count = 0 },
	-- 7
	{ config_id = 1523037, name = "GADGET_STATE_CHANGE_523037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523037", action = "action_EVENT_GADGET_STATE_CHANGE_523037", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 523019, gadget_id = 70230113, pos = { x = -478.668, y = 261.508, z = 3729.659 }, rot = { x = 8.162, y = 337.286, z = 71.495 }, level = 27, persistent = true, area_id = 22 },
		{ config_id = 523020, gadget_id = 70230113, pos = { x = -477.797, y = 262.760, z = 3730.914 }, rot = { x = 2.545, y = 2.554, z = 90.511 }, level = 27, persistent = true, area_id = 22 },
		{ config_id = 523027, gadget_id = 70230113, pos = { x = -475.419, y = 262.838, z = 3729.713 }, rot = { x = 356.802, y = 266.300, z = 88.077 }, level = 33, persistent = true, area_id = 22 },
		{ config_id = 523028, gadget_id = 70230113, pos = { x = -474.237, y = 263.026, z = 3728.620 }, rot = { x = 3.726, y = 52.340, z = 89.811 }, level = 33, persistent = true, area_id = 22 },
		{ config_id = 523029, gadget_id = 70230113, pos = { x = -474.213, y = 262.631, z = 3729.341 }, rot = { x = 3.059, y = 20.273, z = 87.863 }, level = 33, persistent = true, area_id = 22 },
		{ config_id = 523030, gadget_id = 70230113, pos = { x = -475.023, y = 263.261, z = 3727.469 }, rot = { x = 6.239, y = 155.755, z = 97.312 }, level = 33, persistent = true, area_id = 22 }
	},
	triggers = {
		{ config_id = 1523026, name = "ANY_GADGET_DIE_523026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_523026", action = "action_EVENT_ANY_GADGET_DIE_523026", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 523001, 523002, 523003, 523004, 523005, 523012, 523013, 523014, 523015, 523016, 523017, 523018, 523021, 523022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_523007", "VARIABLE_CHANGE_523008", "VARIABLE_CHANGE_523009", "VARIABLE_CHANGE_523010", "GADGET_STATE_CHANGE_523011", "GADGET_STATE_CHANGE_523031", "GADGET_STATE_CHANGE_523032", "GADGET_STATE_CHANGE_523033", "GADGET_STATE_CHANGE_523034", "GADGET_STATE_CHANGE_523035", "GADGET_STATE_CHANGE_523036", "GADGET_STATE_CHANGE_523037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523007(context, evt)
	if max_bit > 9 or max_bit <= 1 then
	    return -1
	end
	if evt.param1 == defs.active_step then
	        --操作顺序入栈
	        for i = 1,max_bit do
	                if defs.gadget_array[i] == evt.param2 then
	                        v = ScriptLib.GetGroupVariableValue(context, "sort")
	                        v = 10*v + i
	                        ScriptLib.SetGroupVariableValue(context, "sort", v)
	                        break 
	                end
	                if i == max_bit and defs.gadget_array[i] ~= evt.param2 then
	                        ScriptLib.SetGroupVariableValue(context, "v_error", 1)
	                        v = 10*v
	                end
	        end
	end
	--v的位数足够时进行出栈检测
	if v > 10^(max_bit-1) then
	        v_error = ScriptLib.GetGroupVariableValue(context, "v_error")
	        --v_error有问题时直接清空栈并重置
	        if 0 == v_error then
	                for i=max_bit,1,-1 do
	                        if v%10 ~= i then
	                                v_error = 1
	                                break
	                        end
	                        v = math.floor(v/10)
	                end
	        end
	        v = 0
	        if v_error ~= 1 then
	                v_error = -1
	        end
	        ScriptLib.SetGroupVariableValue(context, "sort", v) 
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", v_error)
	        ScriptLib.SetGroupVariableValue(context, "v_error", 0)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_523008(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
	                        defs.reset_gear_list = suites[1].gadgets
		end
		for i=1,#defs.reset_gear_list do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
		end
		ScriptLib.SetGroupVariableValue(context, "trigger_output", -1)
	       	elseif -1 == evt.param1 then
		--外接标记
	 		ScriptLib.SetGroupVariableValue(context, "trigger_output", 1)
	        	end
	        --还原标记
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_523009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_523009(context, evt)
	-- 创建id为523006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 523006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_523010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_523010(context, evt)
	-- 创建id为523006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 523006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523011(context, evt)
	if 523001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523011(context, evt)
	-- 将configid为 523002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 523003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 523004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 523005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 523021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 523022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-478.54, y=263.5445, z=3723.436}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-478.54, y=263.5445, z=3723.436}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523031(context, evt)
	if 523001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523031(context, evt)
	-- 将configid为 523012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523032(context, evt)
	if 523002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523032(context, evt)
	-- 将configid为 523013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523033(context, evt)
	if 523003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523033(context, evt)
	-- 将configid为 523014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523034(context, evt)
	if 523004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523034(context, evt)
	-- 将configid为 523015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523035(context, evt)
	if 523005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523035(context, evt)
	-- 将configid为 523016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523036(context, evt)
	if 523021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523036(context, evt)
	-- 将configid为 523017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523037(context, evt)
	if 523022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523037(context, evt)
	-- 将configid为 523018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end