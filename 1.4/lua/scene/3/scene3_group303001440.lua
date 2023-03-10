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
	{ name = "GROUP_LOAD_440001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_440001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 440002, pos = { x = 1441.516, y = 242.697, z = -1520.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 440003, pos = { x = 1448.279, y = 241.949, z = -1517.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 440004, pos = { x = 1437.182, y = 241.600, z = -1515.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 440005, pos = { x = 1444.663, y = 242.452, z = -1510.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 440006, pos = { x = 1440.250, y = 241.977, z = -1511.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		triggers = { "GROUP_LOAD_440001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_440001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    return -1
	end
	
	return 0
end
