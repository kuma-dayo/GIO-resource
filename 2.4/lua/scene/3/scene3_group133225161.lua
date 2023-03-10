-- Trigger变量
local defs = {
	point_sum = 25,
	route_2 = 322500061,
	gadget_seelie = 161001,
	route_decal = 322500063,
	route_back = 322500062
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1
defs.decal_final_point = 4
defs.back_point = 8

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
	{ config_id = 161001, gadget_id = 70710010, pos = { x = -6285.104, y = 224.311, z = -2676.411 }, rot = { x = 342.463, y = 200.021, z = 0.000 }, level = 33, route_id = 322500061, start_route = false, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161002, name = "VARIABLE_CHANGE_161002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_161002", action = "action_EVENT_VARIABLE_CHANGE_161002" },
	{ config_id = 1161003, name = "PLATFORM_REACH_POINT_161003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_161003", action = "action_EVENT_PLATFORM_REACH_POINT_161003" },
	{ config_id = 1161004, name = "PLATFORM_REACH_POINT_161004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_161004", action = "", trigger_count = 0 },
	{ config_id = 1161005, name = "AVATAR_NEAR_PLATFORM_161005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_161005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_161005", trigger_count = 0 },
	{ config_id = 1161006, name = "VARIABLE_CHANGE_161006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_161006", action = "action_EVENT_VARIABLE_CHANGE_161006" },
	{ config_id = 1161007, name = "GROUP_LOAD_161007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_161007", action = "action_EVENT_GROUP_LOAD_161007", trigger_count = 0 },
	{ config_id = 1161008, name = "VARIABLE_CHANGE_161008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_161008", action = "action_EVENT_VARIABLE_CHANGE_161008" },
	{ config_id = 1161009, name = "GADGET_CREATE_161009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_161009", action = "action_EVENT_GADGET_CREATE_161009", trigger_count = 0 },
	{ config_id = 1161010, name = "GADGET_CREATE_161010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_161010", action = "action_EVENT_GADGET_CREATE_161010", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "stone_progress", value = 0, no_refresh = true },
	{ name = "start", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 161001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_161002", "PLATFORM_REACH_POINT_161003", "PLATFORM_REACH_POINT_161004", "AVATAR_NEAR_PLATFORM_161005", "VARIABLE_CHANGE_161008", "GADGET_CREATE_161009", "GADGET_CREATE_161010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 最终空suit,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_161006", "GROUP_LOAD_161007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_161002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_161002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 161001, 322500063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 161001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_161003(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_decal ~= evt.param2 then
	return false
	end
	
	if  defs.decal_final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_161003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 161001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 161001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "decal_finish_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "decal_finish_1", 1, 133225163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133225161, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_161004(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_161005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_161005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 161001) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_161006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_161006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225161, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_161007(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_161007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225161, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_161008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_161008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 161001, 322500062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 161001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_161009(context, evt)
	if 161001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_161009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 161001, 322500063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneCanPlace_B" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StoneCanPlace_B", 1, 133225094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_161010(context, evt)
	if 161001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_161010(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 161001, 322500063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 161001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end