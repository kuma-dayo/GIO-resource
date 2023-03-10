-- DEFS_MISCS
defs = {
	group_id = 133223040,
	seelie_id = 40001,
	region_id = 40005,
	selfLoopPointArray = 322300064,
	selfLoopRoute = {1,2,3,4,5,6,7,8,9,10,11},
	chaseLoopPointArray = 322300015,
	chaseLoopRoute = {2,3},
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
	{ config_id = 40001, gadget_id = 70350292, pos = { x = -5872.994, y = 158.752, z = -2676.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, persistent = true, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 40005, shape = RegionShape.SPHERE, radius = 4, pos = { x = -5871.396, y = 160.670, z = -2677.278 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1040004, name = "VARIABLE_CHANGE_40004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40004", action = "action_EVENT_VARIABLE_CHANGE_40004" },
	{ config_id = 1040005, name = "ENTER_REGION_40005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ name = "isMoving", value = 0, no_refresh = false },
	{ name = "nextRouteIndex", value = 1, no_refresh = false },
	{ name = "currentPathNodeID", value = 0, no_refresh = false },
	{ name = "selfLooping", value = 1, no_refresh = false },
	{ name = "markFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1040002, name = "PLATFORM_REACH_POINT_40002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40002", action = "action_EVENT_PLATFORM_REACH_POINT_40002", trigger_count = 0 },
		{ config_id = 1040003, name = "AVATAR_NEAR_PLATFORM_40003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_40003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_40003", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 40001 },
		regions = { 40005 },
		triggers = { "VARIABLE_CHANGE_40004", "ENTER_REGION_40005" },
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
function condition_EVENT_VARIABLE_CHANGE_40004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"markFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "markFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223040, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_2/SelfLoopSeelie"