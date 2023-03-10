-- 基础信息
local base_info = {
	group_id = 133106344
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1344001, name = "GROUP_LOAD_344001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_344001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 344002, pos = { x = -653.580, y = 203.368, z = 1191.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 },
	{ config_id = 344003, pos = { x = -651.581, y = 202.412, z = 1193.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 },
	{ config_id = 344004, pos = { x = -654.782, y = 202.738, z = 1195.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 }
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
		triggers = { "GROUP_LOAD_344001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_344001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end