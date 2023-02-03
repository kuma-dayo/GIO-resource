-- 基础信息
local base_info = {
	group_id = 133301743
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
	{ config_id = 743002, npc_id = 4225, pos = { x = -905.701, y = -5.633, z = 3127.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 },
	{ config_id = 743003, npc_id = 4226, pos = { x = -905.154, y = -5.634, z = 3158.847 }, rot = { x = 0.000, y = 180.839, z = 0.000 }, area_id = 23 },
	{ config_id = 743004, npc_id = 4227, pos = { x = -889.793, y = -5.632, z = 3142.844 }, rot = { x = 0.000, y = 270.038, z = 0.000 }, area_id = 23 },
	{ config_id = 743005, npc_id = 4228, pos = { x = -921.125, y = -5.632, z = 3143.327 }, rot = { x = 0.000, y = 90.461, z = 0.000 }, area_id = 23 }
}

-- 装置
gadgets = {
	{ config_id = 743001, gadget_id = 70360001, pos = { x = -911.154, y = -5.635, z = 3159.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 从现实到梦境
	{ config_id = 1743006, name = "LEVEL_TAG_CHANGE_743006", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_743006", action = "action_EVENT_LEVEL_TAG_CHANGE_743006", trigger_count = 0 },
	-- 从梦境到现实
	{ config_id = 1743007, name = "LEVEL_TAG_CHANGE_743007", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_743007", action = "action_EVENT_LEVEL_TAG_CHANGE_743007", trigger_count = 0 }
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
		gadgets = { 743001 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_743006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_743007" },
		npcs = { 743002, 743003, 743004, 743005 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEVEL_TAG_CHANGE_743006(context, evt)
	
	-- 监测目标leveltag为58梦境
	if evt.param2 ~= 58 then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_743006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301743, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEVEL_TAG_CHANGE_743007(context, evt)
	
	-- 监测目标leveltag为57现实
	if evt.param2 ~= 57 then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_743007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301743, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end