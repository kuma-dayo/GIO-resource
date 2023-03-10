-- 基础信息
local base_info = {
	group_id = 166001380
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 600100055,
	gadget_seelie = 380002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 380001, gadget_id = 70720218, pos = { x = 1081.922, y = 735.896, z = 299.012 }, rot = { x = 0.000, y = 304.679, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 380002, gadget_id = 70720217, pos = { x = 1013.959, y = 736.492, z = 301.097 }, rot = { x = 0.000, y = 87.403, z = 0.000 }, level = 36, route_id = 600100056, area_id = 300 },
	{ config_id = 380003, gadget_id = 70720219, pos = { x = 1082.015, y = 736.400, z = 299.384 }, rot = { x = 0.000, y = 267.341, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 380004, gadget_id = 70211101, pos = { x = 1081.852, y = 735.626, z = 302.677 }, rot = { x = 0.000, y = 235.380, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 380007, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1014.227, y = 736.459, z = 301.049 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1380005, name = "PLATFORM_REACH_POINT_380005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_380005", action = "action_EVENT_PLATFORM_REACH_POINT_380005", trigger_count = 0 },
	{ config_id = 1380006, name = "AVATAR_NEAR_PLATFORM_380006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_380006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_380006", trigger_count = 0 },
	{ config_id = 1380007, name = "ENTER_REGION_380007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_380007", action = "action_EVENT_ENTER_REGION_380007", trigger_count = 0 },
	{ config_id = 1380008, name = "GADGET_STATE_CHANGE_380008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_380008", action = "action_EVENT_GADGET_STATE_CHANGE_380008" },
	{ config_id = 1380009, name = "GADGET_CREATE_380009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_380009", action = "action_EVENT_GADGET_CREATE_380009", trigger_count = 0 }
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
		gadgets = { 380001, 380002, 380003 },
		regions = { 380007 },
		triggers = { "PLATFORM_REACH_POINT_380005", "AVATAR_NEAR_PLATFORM_380006", "ENTER_REGION_380007", "GADGET_STATE_CHANGE_380008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 380001, 380004 },
		regions = { },
		triggers = { "GADGET_CREATE_380009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_380005(context, evt)
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

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_380005(context, evt)
	-- 将configid为 380001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 380002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 380002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_380006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_380006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 380002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_380007(context, evt)
	if evt.param1 ~= 380007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_380007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 380002, 600100055) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 380003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_380008(context, evt)
	if 380001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_380008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001380, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_380009(context, evt)
	if 380001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_380009(context, evt)
	-- 将configid为 380001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end