-- 基础信息
local base_info = {
	group_id = 133220477
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
	{ config_id = 477001, npc_id = 20250, pos = { x = -2786.663, y = 207.173, z = -4094.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 477002, gadget_id = 70290127, pos = { x = -2786.823, y = 207.272, z = -4094.442 }, rot = { x = 0.000, y = 356.862, z = 358.892 }, level = 27, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1477003, name = "QUEST_FINISH_477003", event = EventType.EVENT_QUEST_FINISH, source = "7210631", condition = "", action = "action_EVENT_QUEST_FINISH_477003", trigger_count = 0 }
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
		gadgets = { 477002 },
		regions = { },
		triggers = { "QUEST_FINISH_477003" },
		npcs = { 477001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_477003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_477003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 477002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end