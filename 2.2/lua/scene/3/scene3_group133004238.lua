-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300400603,
	gadget_seelie = 238002
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
	{ config_id = 238001, gadget_id = 70710006, pos = { x = 2597.849, y = 273.419, z = -330.964 }, rot = { x = 8.031, y = 359.765, z = 356.659 }, level = 20, area_id = 4 },
	{ config_id = 238002, gadget_id = 70710010, pos = { x = 2557.872, y = 270.834, z = -271.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 300400604, area_id = 4 },
	{ config_id = 238003, gadget_id = 70710007, pos = { x = 2597.334, y = 273.404, z = -330.596 }, rot = { x = 0.495, y = 301.612, z = 351.292 }, level = 20, area_id = 4 },
	{ config_id = 238004, gadget_id = 70211111, pos = { x = 2595.895, y = 273.478, z = -330.304 }, rot = { x = 9.300, y = 23.423, z = 359.000 }, level = 16, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 238007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2557.941, y = 271.803, z = -271.365 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1238005, name = "PLATFORM_REACH_POINT_238005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_238005", action = "action_EVENT_PLATFORM_REACH_POINT_238005", trigger_count = 0 },
	{ config_id = 1238006, name = "AVATAR_NEAR_PLATFORM_238006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_238006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_238006", trigger_count = 0 },
	{ config_id = 1238007, name = "ENTER_REGION_238007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_238007", action = "action_EVENT_ENTER_REGION_238007", trigger_count = 0 },
	{ config_id = 1238008, name = "GADGET_STATE_CHANGE_238008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238008", action = "action_EVENT_GADGET_STATE_CHANGE_238008" },
	{ config_id = 1238009, name = "GADGET_CREATE_238009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_238009", action = "action_EVENT_GADGET_CREATE_238009", trigger_count = 0 }
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
		gadgets = { 238001, 238002, 238003 },
		regions = { 238007 },
		triggers = { "PLATFORM_REACH_POINT_238005", "AVATAR_NEAR_PLATFORM_238006", "ENTER_REGION_238007", "GADGET_STATE_CHANGE_238008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 238001, 238004 },
		regions = { },
		triggers = { "GADGET_CREATE_238009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_238005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_238005(context, evt)
	-- 将configid为 238001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 238002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 238002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_238006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_238006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 238002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_238007(context, evt)
	if evt.param1 ~= 238007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_238007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 238002, 300400603) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 238003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_238008(context, evt)
	if 238001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004238, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_238009(context, evt)
	if 238001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_238009(context, evt)
	-- 将configid为 238001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end