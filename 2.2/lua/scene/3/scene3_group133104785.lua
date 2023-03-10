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
	{ config_id = 1785001, name = "GROUP_LOAD_785001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_785001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 785002, pos = { x = 322.177, y = 210.825, z = 878.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 785003, pos = { x = 322.714, y = 210.197, z = 887.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 785004, pos = { x = 328.409, y = 209.565, z = 877.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 }
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
		triggers = { "GROUP_LOAD_785001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_785001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end