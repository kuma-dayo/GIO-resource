-- 基础信息
local base_info = {
	group_id = 133304355
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
	{ config_id = 355001, gadget_id = 70500000, pos = { x = -1393.133, y = 318.459, z = 2005.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 355002, gadget_id = 70500000, pos = { x = -1357.257, y = 313.212, z = 2016.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 355003, gadget_id = 70500000, pos = { x = -1375.118, y = 314.464, z = 2000.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1355004, name = "GROUP_LOAD_355004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_355004", action = "action_EVENT_GROUP_LOAD_355004", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_355004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 355001, 355002, 355003 },
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
function condition_EVENT_GROUP_LOAD_355004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_355004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304355, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end