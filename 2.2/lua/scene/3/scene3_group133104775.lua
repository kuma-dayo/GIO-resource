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
	{ config_id = 1775001, name = "GROUP_LOAD_775001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_775001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 775002, pos = { x = 350.963, y = 185.168, z = 840.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 775003, pos = { x = 354.660, y = 185.268, z = 843.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 775004, pos = { x = 348.738, y = 185.445, z = 840.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 }
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
		triggers = { "GROUP_LOAD_775001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_775001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end