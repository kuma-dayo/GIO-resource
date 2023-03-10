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
	{ config_id = 167001, gadget_id = 70360167, pos = { x = -3617.999, y = 208.167, z = -965.329 }, rot = { x = 0.000, y = 34.891, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 167013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3617.999, y = 208.241, z = -965.329 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1167002, name = "GADGET_STATE_CHANGE_167002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167002", action = "action_EVENT_GADGET_STATE_CHANGE_167002", trigger_count = 0 },
	{ config_id = 1167003, name = "GADGET_STATE_CHANGE_167003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167003", action = "action_EVENT_GADGET_STATE_CHANGE_167003", trigger_count = 0 },
	{ config_id = 1167004, name = "TIME_AXIS_PASS_167004", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_167004", action = "action_EVENT_TIME_AXIS_PASS_167004", trigger_count = 0 },
	{ config_id = 1167005, name = "TIME_AXIS_PASS_167005", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_167005", action = "", trigger_count = 0 },
	{ config_id = 1167006, name = "GADGET_CREATE_167006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_167006", action = "action_EVENT_GADGET_CREATE_167006", trigger_count = 0 },
	{ config_id = 1167007, name = "SELECT_OPTION_167007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_167007", action = "action_EVENT_SELECT_OPTION_167007", trigger_count = 0 },
	{ config_id = 1167008, name = "TIME_AXIS_PASS_167008", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_167008", action = "action_EVENT_TIME_AXIS_PASS_167008", trigger_count = 0 },
	{ config_id = 1167009, name = "TIME_AXIS_PASS_167009", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_167009", action = "action_EVENT_TIME_AXIS_PASS_167009", trigger_count = 0 },
	{ config_id = 1167010, name = "SELECT_OPTION_167010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_167010", action = "action_EVENT_SELECT_OPTION_167010", trigger_count = 0 },
	{ config_id = 1167011, name = "GADGET_CREATE_167011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_167011", action = "action_EVENT_GADGET_CREATE_167011", trigger_count = 0 },
	{ config_id = 1167012, name = "GADGET_STATE_CHANGE_167012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167012", action = "action_EVENT_GADGET_STATE_CHANGE_167012", trigger_count = 0 },
	{ config_id = 1167013, name = "ENTER_REGION_167013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167013", action = "action_EVENT_ENTER_REGION_167013", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 167001 },
		regions = { 167013 },
		triggers = { "GADGET_STATE_CHANGE_167002", "GADGET_STATE_CHANGE_167003", "TIME_AXIS_PASS_167004", "TIME_AXIS_PASS_167005", "GADGET_CREATE_167006", "SELECT_OPTION_167007", "TIME_AXIS_PASS_167008", "TIME_AXIS_PASS_167009", "SELECT_OPTION_167010", "GADGET_CREATE_167011", "GADGET_STATE_CHANGE_167012", "ENTER_REGION_167013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167002(context, evt)
	-- 检测config_id为167001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 167001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167002(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167003(context, evt)
	-- 检测config_id为167001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 167001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167003(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_167004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_167004(context, evt)
	-- 改变指定group组133210347中， configid为347002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210347, 347002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_167005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_167006(context, evt)
	if 167001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_167006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210167, 167001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_167007(context, evt)
	-- 判断是gadgetid 167001 option_id 61
	if 167001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_167007(context, evt)
	-- 将configid为 167001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210167 ；指定config：167001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210167, 167001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_167008(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_167008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210167, 167001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_167009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_167009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210167, 167001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_167010(context, evt)
	-- 判断是gadgetid 167001 option_id 62
	if 167001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_167010(context, evt)
	-- 将configid为 167001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210167 ；指定config：167001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210167, 167001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_167011(context, evt)
	if 167001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_167011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210167, 167001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167012(context, evt)
	-- 检测config_id为167001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 167001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210167, 167001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_167013(context, evt)
	if evt.param1 ~= 167013 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210167, 167001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end