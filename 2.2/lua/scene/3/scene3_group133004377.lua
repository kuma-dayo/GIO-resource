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
	{ config_id = 1377001, name = "GROUP_LOAD_377001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_377001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 377002, pos = { x = 2612.408, y = 275.812, z = -250.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 377003, pos = { x = 2619.171, y = 274.973, z = -247.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 377004, pos = { x = 2608.074, y = 276.062, z = -245.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 377005, pos = { x = 2615.555, y = 277.332, z = -240.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 377006, pos = { x = 2611.142, y = 276.371, z = -241.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 }
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
		triggers = { "GROUP_LOAD_377001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_377001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end