-- 基础信息
local base_info = {
	group_id = 133315090
}

-- Trigger变量
local defs = {
	group_id = 133315090,
	gadget_riddle_hint = 90001,
	gadget_riddle_1 = 90002,
	gadget_riddle_2 = 90003,
	gadget_riddle_3 = 90004,
	gadget_riddle_4 = 90005,
	gadget_chest = 90006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 90018, monster_id = 28030313, pos = { x = 177.344, y = 257.058, z = 2983.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 90001, gadget_id = 70230112, pos = { x = 189.630, y = 249.411, z = 2971.545 }, rot = { x = 0.837, y = 82.833, z = 107.946 }, level = 27, area_id = 20 },
	{ config_id = 90002, gadget_id = 70310011, pos = { x = 194.921, y = 254.353, z = 2953.954 }, rot = { x = 0.000, y = 301.462, z = 0.000 }, level = 19, persistent = true, area_id = 20 },
	{ config_id = 90003, gadget_id = 70320005, pos = { x = 176.734, y = 253.524, z = 2982.875 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 19, persistent = true, area_id = 20 },
	{ config_id = 90004, gadget_id = 70310011, pos = { x = 173.608, y = 248.603, z = 2961.725 }, rot = { x = 354.694, y = 261.833, z = 354.473 }, level = 19, persistent = true, area_id = 20 },
	{ config_id = 90005, gadget_id = 70320005, pos = { x = 208.955, y = 250.972, z = 2982.021 }, rot = { x = 359.799, y = 336.944, z = 356.448 }, level = 19, persistent = true, area_id = 20 },
	{ config_id = 90006, gadget_id = 70211102, pos = { x = 188.313, y = 249.327, z = 2970.173 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 90010, gadget_id = 70230112, pos = { x = 187.216, y = 248.860, z = 2971.933 }, rot = { x = 9.434, y = 330.897, z = 83.478 }, level = 27, area_id = 20 },
	{ config_id = 90011, gadget_id = 70230112, pos = { x = 186.803, y = 248.832, z = 2969.066 }, rot = { x = 12.161, y = 255.271, z = 91.688 }, level = 27, area_id = 20 },
	{ config_id = 90012, gadget_id = 70230112, pos = { x = 189.178, y = 249.357, z = 2968.382 }, rot = { x = 12.236, y = 179.606, z = 90.246 }, level = 27, area_id = 20 },
	{ config_id = 90019, gadget_id = 70330218, pos = { x = 175.263, y = 251.870, z = 2982.834 }, rot = { x = 0.000, y = 122.230, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 90020, gadget_id = 70310198, pos = { x = 198.887, y = 253.380, z = 2958.719 }, rot = { x = 0.000, y = 322.800, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090007, name = "GADGET_STATE_CHANGE_90007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90007", action = "action_EVENT_GADGET_STATE_CHANGE_90007", trigger_count = 0 },
	{ config_id = 1090008, name = "VARIABLE_CHANGE_90008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_90008", action = "action_EVENT_VARIABLE_CHANGE_90008", trigger_count = 0 },
	{ config_id = 1090009, name = "GROUP_LOAD_90009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_90009", trigger_count = 0 },
	{ config_id = 1090013, name = "GADGET_STATE_CHANGE_90013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90013", action = "action_EVENT_GADGET_STATE_CHANGE_90013" },
	{ config_id = 1090014, name = "GADGET_STATE_CHANGE_90014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90014", action = "action_EVENT_GADGET_STATE_CHANGE_90014" },
	{ config_id = 1090015, name = "GADGET_STATE_CHANGE_90015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90015", action = "action_EVENT_GADGET_STATE_CHANGE_90015" },
	{ config_id = 1090016, name = "GADGET_STATE_CHANGE_90016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90016", action = "action_EVENT_GADGET_STATE_CHANGE_90016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
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
		monsters = { 90018 },
		gadgets = { 90001, 90002, 90003, 90004, 90005, 90006, 90010, 90011, 90012, 90019, 90020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90007", "VARIABLE_CHANGE_90008", "GROUP_LOAD_90009", "GADGET_STATE_CHANGE_90013", "GADGET_STATE_CHANGE_90014", "GADGET_STATE_CHANGE_90015", "GADGET_STATE_CHANGE_90016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90013(context, evt)
	if 90005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90013(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90014(context, evt)
	if 90002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90014(context, evt)
	-- 将configid为 90012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90015(context, evt)
	if 90003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90015(context, evt)
	-- 将configid为 90010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90016(context, evt)
	if 90004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90016(context, evt)
	-- 将configid为 90011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end