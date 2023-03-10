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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1399001, name = "GROUP_LOAD_399001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_399001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 399002, pos = { x = 2549.421, y = 262.728, z = -292.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 399003, pos = { x = 2547.407, y = 263.123, z = -292.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 399004, pos = { x = 2548.836, y = 262.117, z = -295.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_399001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_399001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end