-- Trigger变量
local defs = {
	group_id = 133103220,
	gadget_target_1S = 220002,
	gadget_target_1E = 220005,
	gadget_target_2S = 220003,
	gadget_target_2E = 220006,
	gadget_target_3S = 220004,
	gadget_target_3E = 220007
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
	{ config_id = 220001, gadget_id = 70360008, pos = { x = 987.594, y = 363.329, z = 1483.138 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 220002, gadget_id = 70360011, pos = { x = 994.127, y = 365.086, z = 1490.187 }, rot = { x = 0.000, y = 264.995, z = 0.000 }, level = 32, mark_flag = 2, area_id = 6 },
	{ config_id = 220003, gadget_id = 70360011, pos = { x = 995.960, y = 365.100, z = 1487.827 }, rot = { x = 0.000, y = 322.395, z = 0.000 }, level = 32, mark_flag = 4, area_id = 6 },
	{ config_id = 220004, gadget_id = 70360011, pos = { x = 997.594, y = 365.100, z = 1485.706 }, rot = { x = 0.000, y = 322.395, z = 0.000 }, level = 32, mark_flag = 8, area_id = 6 },
	{ config_id = 220005, gadget_id = 70360014, pos = { x = 994.127, y = 365.086, z = 1490.187 }, rot = { x = 0.000, y = 150.195, z = 0.000 }, level = 32, route_id = 310300072, area_id = 6 },
	{ config_id = 220006, gadget_id = 70360014, pos = { x = 995.960, y = 365.100, z = 1487.827 }, rot = { x = 0.000, y = 322.395, z = 0.000 }, level = 32, route_id = 310300073, area_id = 6 },
	{ config_id = 220007, gadget_id = 70360014, pos = { x = 997.594, y = 365.100, z = 1485.706 }, rot = { x = 0.000, y = 322.395, z = 0.000 }, level = 32, route_id = 310300074, area_id = 6 },
	{ config_id = 220008, gadget_id = 70211111, pos = { x = 982.427, y = 344.187, z = 1487.932 }, rot = { x = 357.052, y = 238.229, z = 357.475 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220009, name = "GADGET_STATE_CHANGE_220009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_220009", trigger_count = 0 },
	{ config_id = 1220010, name = "GADGET_STATE_CHANGE_220010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220010", action = "action_EVENT_GADGET_STATE_CHANGE_220010" },
	{ config_id = 1220011, name = "VARIABLE_CHANGE_220011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220011", action = "action_EVENT_VARIABLE_CHANGE_220011" },
	{ config_id = 1220012, name = "GADGET_STATE_CHANGE_220012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_220012", action = "action_EVENT_GADGET_STATE_CHANGE_220012", trigger_count = 0 },
	{ config_id = 1220013, name = "GADGET_CREATE_220013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_220013", action = "action_EVENT_GADGET_CREATE_220013", trigger_count = 0 },
	{ config_id = 1220014, name = "SELECT_OPTION_220014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_220014", action = "action_EVENT_SELECT_OPTION_220014", trigger_count = 0 },
	{ config_id = 1220015, name = "GROUP_REFRESH_220015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_220015" },
	{ config_id = 1220016, name = "ANY_GADGET_DIE_220016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_220016", trigger_count = 0 },
	{ config_id = 1220017, name = "GADGET_CREATE_220017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_220017", action = "action_EVENT_GADGET_CREATE_220017", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 220001, 220002, 220003, 220004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_220009", "GADGET_STATE_CHANGE_220010", "VARIABLE_CHANGE_220011", "GADGET_STATE_CHANGE_220012", "GADGET_CREATE_220013", "SELECT_OPTION_220014", "GROUP_REFRESH_220015", "ANY_GADGET_DIE_220016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 220001, 220008 },
		regions = { },
		triggers = { "GADGET_CREATE_220017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220009(context, evt)
	if evt.param1 == GadgetState.GearStart and evt.param3 == GadgetState.Default then
		
	if evt.param2 == defs.gadget_target_1S  then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 
	
	elseif evt.param2 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	
	elseif evt.param2 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	
	end
		
	return 0
	else return -1
		
	end
		
	return false
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220010(context, evt)
	if 220001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
	return false
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_1S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_2S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_3S)  then 
	return true
	end
		
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103220, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_220011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_220011(context, evt)
	-- 将configid为 220001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103220, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_220012(context, evt)
	if 220001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_220012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133103220 ；指定config：220001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103220, 220001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_220013(context, evt)
	if 220001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_220013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103220, 220001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_220014(context, evt)
	if 220001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_220014(context, evt)
	-- 将configid为 220001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_220015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103220, 220001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_220016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_220017(context, evt)
	if 220001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_220017(context, evt)
	-- 将configid为 220001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end