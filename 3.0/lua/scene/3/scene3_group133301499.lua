-- 基础信息
local base_info = {
	group_id = 133301499
}

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
	{ config_id = 499001, gadget_id = 70290422, pos = { x = -600.174, y = 40.635, z = 3764.143 }, rot = { x = 341.692, y = 357.576, z = 342.677 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 499002, gadget_id = 70290422, pos = { x = -589.740, y = 37.186, z = 3835.187 }, rot = { x = 349.069, y = 348.864, z = 4.328 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 499003, gadget_id = 70290422, pos = { x = -558.820, y = 39.819, z = 3819.716 }, rot = { x = 14.928, y = 262.347, z = 4.655 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 499004, gadget_id = 70290422, pos = { x = -573.423, y = 38.653, z = 3791.456 }, rot = { x = 17.896, y = 255.448, z = 2.516 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 499005, gadget_id = 70360001, pos = { x = -599.471, y = 33.562, z = 3790.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 499007, gadget_id = 70290422, pos = { x = -554.008, y = 32.769, z = 3749.761 }, rot = { x = 2.414, y = 139.648, z = 349.115 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 499008, gadget_id = 70290422, pos = { x = -595.649, y = 36.518, z = 3697.402 }, rot = { x = 21.112, y = 359.280, z = 351.171 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 499009, gadget_id = 70290422, pos = { x = -636.346, y = 38.270, z = 3755.412 }, rot = { x = 344.093, y = 155.949, z = 4.056 }, level = 33, isOneoff = true, persistent = true, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 石锁202后，锁链202，01/17
	{ config_id = 1499006, name = "GADGET_STATE_CHANGE_499006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499006", action = "action_EVENT_GADGET_STATE_CHANGE_499006" },
	-- 石锁202后，锁链202，02/19
	{ config_id = 1499010, name = "GADGET_STATE_CHANGE_499010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499010", action = "action_EVENT_GADGET_STATE_CHANGE_499010" },
	-- 石锁202后，锁链202，03/21
	{ config_id = 1499011, name = "GADGET_STATE_CHANGE_499011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499011", action = "action_EVENT_GADGET_STATE_CHANGE_499011" },
	-- 石锁202后，锁链202，04/23
	{ config_id = 1499012, name = "GADGET_STATE_CHANGE_499012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499012", action = "action_EVENT_GADGET_STATE_CHANGE_499012" },
	{ config_id = 1499013, name = "GADGET_STATE_CHANGE_499013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499013", action = "action_EVENT_GADGET_STATE_CHANGE_499013", trigger_count = 0 },
	-- 石锁202后，锁链202，07/25
	{ config_id = 1499014, name = "GADGET_STATE_CHANGE_499014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499014", action = "action_EVENT_GADGET_STATE_CHANGE_499014" },
	-- 石锁202后，锁链202，08/27
	{ config_id = 1499015, name = "GADGET_STATE_CHANGE_499015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499015", action = "action_EVENT_GADGET_STATE_CHANGE_499015" },
	-- 石锁202后，锁链202，09/29
	{ config_id = 1499016, name = "GADGET_STATE_CHANGE_499016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499016", action = "action_EVENT_GADGET_STATE_CHANGE_499016" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 499017, gadget_id = 70290585, pos = { x = -617.259, y = 41.532, z = 3808.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 1, area_id = 25 },
		{ config_id = 499018, gadget_id = 70290586, pos = { x = -612.127, y = 36.114, z = 3804.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 1, area_id = 25 },
		{ config_id = 499019, gadget_id = 70290585, pos = { x = -588.978, y = 37.970, z = 3834.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 2, area_id = 25 },
		{ config_id = 499020, gadget_id = 70290586, pos = { x = -588.562, y = 34.568, z = 3827.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 2, area_id = 25 },
		{ config_id = 499021, gadget_id = 70290585, pos = { x = -579.355, y = 37.812, z = 3812.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 3, area_id = 25 },
		{ config_id = 499022, gadget_id = 70290586, pos = { x = -584.216, y = 34.251, z = 3813.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 3, area_id = 25 },
		{ config_id = 499023, gadget_id = 70290585, pos = { x = -574.023, y = 39.621, z = 3791.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 4, area_id = 25 },
		{ config_id = 499024, gadget_id = 70290586, pos = { x = -583.761, y = 33.649, z = 3787.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 4, area_id = 25 },
		{ config_id = 499025, gadget_id = 70290585, pos = { x = -554.347, y = 33.835, z = 3749.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 5, area_id = 25 },
		{ config_id = 499026, gadget_id = 70290586, pos = { x = -559.060, y = 31.170, z = 3751.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 5, area_id = 25 },
		{ config_id = 499027, gadget_id = 70290585, pos = { x = -595.499, y = 37.413, z = 3698.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 6, area_id = 25 },
		{ config_id = 499028, gadget_id = 70290586, pos = { x = -593.771, y = 30.794, z = 3705.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 6, area_id = 25 },
		{ config_id = 499029, gadget_id = 70290585, pos = { x = -636.478, y = 39.220, z = 3756.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 7, area_id = 25 },
		{ config_id = 499030, gadget_id = 70290586, pos = { x = -630.029, y = 28.886, z = 3768.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 7, area_id = 25 }
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
		gadgets = { 499001, 499002, 499003, 499004, 499005, 499007, 499008, 499009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499006(context, evt)
	if 499001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499006(context, evt)
	-- 将configid为 499017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499010(context, evt)
	if 499002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499010(context, evt)
	-- 将configid为 499019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499011(context, evt)
	if 499003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499011(context, evt)
	-- 将configid为 499021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499012(context, evt)
	if 499004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499012(context, evt)
	-- 将configid为 499023 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499023, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499013(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499001) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499002) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499007) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499008) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301499, 499009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499013(context, evt)
	-- 将configid为 499005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499014(context, evt)
	if 499007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499014(context, evt)
	-- 将configid为 499025 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499025, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499015(context, evt)
	if 499008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499015(context, evt)
	-- 将configid为 499027 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499027, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_499016(context, evt)
	if 499009 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499016(context, evt)
	-- 将configid为 499029 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499029, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"