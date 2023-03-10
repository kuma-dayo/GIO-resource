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
	{ config_id = 1619006, name = "GROUP_LOAD_619006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_619006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 619001, pos = { x = 2765.665, y = 273.137, z = -1505.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 619002, pos = { x = 2768.615, y = 273.018, z = -1507.380 }, rot = { x = 0.000, y = 348.819, z = 0.000 }, area_id = 1 },
	{ config_id = 619003, pos = { x = 2763.512, y = 273.628, z = -1507.673 }, rot = { x = 0.000, y = 9.355, z = 0.000 }, area_id = 1 },
	{ config_id = 619004, pos = { x = 2767.895, y = 272.614, z = -1503.198 }, rot = { x = 0.000, y = 338.151, z = 0.000 }, area_id = 1 },
	{ config_id = 619005, pos = { x = 2762.579, y = 272.773, z = -1502.907 }, rot = { x = 0.000, y = 28.628, z = 0.000 }, area_id = 1 }
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
		triggers = { "GROUP_LOAD_619006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_619006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end